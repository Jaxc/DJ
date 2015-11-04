/*  I2S_interface.c - The simplest kernel module.
 */
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>
//#include <linux/fs.h>
#include <linux/proc_fs.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
//#include <linux/types.h>

#include "I2S_param.h"

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR("JAXCIE");
MODULE_DESCRIPTION("I2S_interface - A module for interfacing the I2S core");

#define DRIVER_NAME "I2S_Audio"

/* Simple example of how to receive command line parameters to your module.
   Delete if you don't need them */
unsigned myint = 0xdeadbeef;
char *mystr = "default";
static int I2S_major;
static struct class* I2S_class = NULL;

module_param(myint, int, S_IRUGO);
module_param(mystr, charp, S_IRUGO);

struct I2S_interface_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
};

static irqreturn_t I2S_interface_irq(int irq, void *lp)
{
	printk("I2S_interface interrupt\n");
	return IRQ_HANDLED;
}

static int I2S_open(struct inode* inode, struct file* filp){
	return 0;
}

static int I2S_read(struct inode* inode, struct file* filp){
	return 0;
}

static int I2S_close(struct inode* inode, struct file* filp){
	return 0;
}

// File operations
  static const struct file_operations I2S_operations = {
 	.read = I2S_read,
 	.open = I2S_open,
 	.release = I2S_close
};

static int I2S_interface_probe(struct platform_device *pdev)
{
	struct resource *r_irq; /* Interrupt resources */
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct I2S_interface_local *lp = NULL;

	struct proc_dir_entry *I2S_proc_entry;

	int rc = 0;
	
	dev_info(dev, "Device Tree Probing\n");

	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	
	lp = (struct I2S_interface_local *) kmalloc(sizeof(struct I2S_interface_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate I2S_interface device\n");
		return -ENOMEM;
	}
	
	dev_set_drvdata(dev, lp);
	
	lp->mem_start =  r_mem->start;
	lp->mem_end = r_mem->end;

	if (!request_mem_region(lp->mem_start,
				lp->mem_end - lp->mem_start + 1,
				DRIVER_NAME)) {
		dev_err(dev, "Couldn't lock memory region at %p\n",
			(void *)lp->mem_start);
		rc = -EBUSY;
		goto error1;
	}

	lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if (!lp->base_addr) {
		dev_err(dev, "I2S_interface: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}

	I2S_proc_entry = proc_create(DRIVER_NAME, 0, NULL,
                        &I2S_operations);
     if (I2S_proc_entry == NULL) {
         dev_err(&pdev->dev, "Couldn't create proc entry\n");
         rc = -ENOMEM;
         goto err_create_proc_entry;
     }

	/* Get IRQ for the device */
	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
	if (!r_irq) {
		dev_info(dev, "no IRQ found\n");
		dev_info(dev, "I2S_interface at 0x%08x mapped to 0x%08x\n",
			(unsigned int __force)lp->mem_start,
			(unsigned int __force)lp->base_addr);
		return 0;
	}
	lp->irq = r_irq->start;
	
	rc = request_irq(lp->irq, &I2S_interface_irq, 0, DRIVER_NAME, lp);
	if (rc) {
		dev_err(dev, "testmodule: Could not allocate interrupt %d.\n",
			lp->irq);
		goto error3;
	}

	dev_info(dev,"I2S_interface at 0x%08x mapped to 0x%08x, irq=%d\n",
		(unsigned int __force)lp->mem_start,
		(unsigned int __force)lp->base_addr,
		lp->irq);
	return 0;
error3:
	free_irq(lp->irq, lp);
err_create_proc_entry:
	iounmap(lp->base_addr);
error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return rc;
}



static int I2S_interface_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct I2S_interface_local *lp = dev_get_drvdata(dev);
	free_irq(lp->irq, lp);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id I2S_interface_of_match[] = {
	{ .compatible = "xlnx,Jaxc-I2S-1.5.0", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, I2S_interface_of_match);
#else
# define I2S_interface_of_match
#endif


static struct platform_driver I2S_interface_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= I2S_interface_of_match,
	},
	.probe		= I2S_interface_probe,
	.remove		= I2S_interface_remove,
};

static int __init I2S_interface_init(void)
{
	printk("<1>Hello module world.\n");
	printk("<1>Module parameters were (0x%08x) and \"%s\"\n", myint,
	       mystr);

	return platform_driver_register(&I2S_interface_driver);

	//return platform_driver_register(&I2S_interface_driver);

/*	int retval;

	I2S_major = register_chrdev(0, DEVICE_NAME, &I2S_operations);
	if (I2S_major < 0) {
		err("failed to register device: error %d\n", I2S_major);
		retval = I2S_major;
		goto failed_chrdevreg;
 	}

	I2S_class = class_create(THIS_MODULE, CLASS_NAME);
	 if (IS_ERR(I2S_class)) {
	  err("failed to register device class '%s'\n", CLASS_NAME);
	  retval = PTR_ERR(I2S_class);
	  goto failed_classreg;
	 }
	 
	 / With a class, the easiest way to instantiate a device is to call device_create() /
	 parrot_device = device_create(I2S_class, NULL, MKDEV(I2S_major, 0), NULL, CLASS_NAME "_" DEVICE_NAME);
	 if (IS_ERR(parrot_device)) {
	  err("failed to create device '%s_%s'\n", CLASS_NAME, DEVICE_NAME);
	  retval = PTR_ERR(parrot_device);
	  goto failed_devreg;
	 }
	 
	 / Now we can create the sysfs endpoints (don't care about errors).
	  * dev_attr_fifo and dev_attr_reset come from the DEVICE_ATTR(...) earlier /
	 retval = device_create_file(parrot_device, &dev_attr_fifo);
	 if (retval < 0) {
	  warn("failed to create write /sys endpoint - continuing without\n");
	 }
	 retval = device_create_file(parrot_device, &dev_attr_reset);
	 if (retval < 0) {
	  warn("failed to create reset /sys endpoint - continuing without\n");
	 }
	 
	 mutex_init(&parrot_device_mutex);
	 / This device uses a Kernel FIFO for its read operation /
	 INIT_KFIFO(parrot_msg_fifo);
	 parrot_msg_idx_rd = parrot_msg_idx_wr = 0;
	 
	 return 0;
	 
	failed_devreg:
	 class_unregister(I2S_class);
	 class_destroy(I2S_class);
	failed_classreg:
	 unregister_chrdev(I2S_major, DEVICE_NAME);
	failed_chrdevreg:
	 return -1;
*/


}


static void __exit I2S_interface_exit(void)
{
	platform_driver_unregister(&I2S_interface_driver);

	/* dbg("");
	 device_remove_file(parrot_device, &dev_attr_fifo);
	 device_remove_file(parrot_device, &dev_attr_reset);
	 device_destroy(I2S_class, MKDEV(I2S_major, 0));
	 class_unregister(I2S_class);
	 class_destroy(I2S_class);
	 unregister_chrdev(I2S_major, DEVICE_NAME);*/
	printk(KERN_ALERT "Goodbye module world.\n");
}

module_init(I2S_interface_init);
module_exit(I2S_interface_exit);

