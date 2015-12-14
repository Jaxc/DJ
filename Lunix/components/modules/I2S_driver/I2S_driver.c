/*  I2S_driver.c - The simplest kernel module.
 */
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>

#include <linux/proc_fs.h>  /* Needed for Proc File System Functions */
#include <linux/seq_file.h> /* Needed for Sequence File Operations */

//#include <include/math.h> // To create sine output
#include <linux/wait.h> // Queue support
#include <linux/sched.h> // needed for queue

#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>


// for I2C interactions
/*#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>*/

wait_queue_head_t audio_queue;


/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Xilinx Inc.");
MODULE_DESCRIPTION
    ("I2S_driver - loadable module template generated by petalinux-create -t modules");

#define DRIVER_NAME "I2S_driver"
//#define addr_size 512;

//#define M_PI acos(-1.0)

/* Simple example of how to receive command line parameters to your module.
   Delete if you don't need them */
unsigned myint = 0xdeadbeef;
char *mystr = "default";

//struct resource *res;
unsigned long remap_size;
unsigned long addr_size = 512;
unsigned long *base_addr;

unsigned char current_word;
unsigned char read_address;
unsigned char write_address;

unsigned char flag = 0;

module_param(myint, int, S_IRUGO);
module_param(mystr, charp, S_IRUGO);

struct I2S_driver_local {
	int irq;
	unsigned long start;
	unsigned long end;
	void __iomem *base_addr;
};

 unsigned long int_cnt = 0;

static irqreturn_t I2S_driver_irq(int irq, void *res)
{
  //if (flag == 0){ 
  //  printk("bip\n");
  //    }
  flag = 1;
  wake_up_interruptible(&audio_queue);
	return IRQ_HANDLED;
}

 static int proc_I2S_driver_show(struct seq_file *p, void *v)
 {
     u32 I2S_value;
     I2S_value = ioread32(base_addr);
     seq_printf(p, "0x%x", I2S_value);
     return 0;
 }

static int proc_I2S_driver_open(struct inode* inode, struct file* file){
    unsigned long size = 16;
      char *buf;
      struct seq_file *m;
      int res;
  
      buf = (char *)kmalloc(size * sizeof(char), GFP_KERNEL);
      if (!buf)
          return -ENOMEM;
  
      res = single_open(file, proc_I2S_driver_show, NULL);
  
      if (!res) {
          m = file->private_data;
          m->buf = buf;
          m->size = size;
      } else {
          kfree(buf);
      }
      
      current_word = 0;

      return res;
}

static int proc_I2S_driver_read(struct inode* inode, char __user *buffer, struct file* filp){
    
	// READ NOT CURRENTLY SUPPORTED!!!
    u32 I2S_value;
    I2S_value = ioread32(base_addr);

    if (current_word) { return 0;}

    //printk("<1> base_addr: %08lx", base_addr);


    
    buffer[0] = (I2S_value >> 24) & 0xFF;
    buffer[1] = (I2S_value >> 16) & 0xFF;
    buffer[2] = (I2S_value >> 8) & 0xFF;
    buffer[3] = I2S_value & 0xFF;
    buffer[4] = '\n';
    printk("<1>%c%c%c%c",buffer[0],buffer[1],buffer[2],buffer[3]);
    printk("<1> 0x%08x\n",I2S_value);

    current_word++;
    return 4  ;
}

int32_t swap_int32( int32_t val )
{
    val = ((val << 8) & 0xFF00FF00) | ((val >> 8) & 0xFF00FF ); 
    return (val << 16) | ((val >> 16) & 0xFFFF);
}

static int proc_I2S_driver_write(struct file *file, const char __user * buf,
                  size_t count, loff_t * ppos){

  //  printk("<1>DATA written: %x\n", (buf[0]<<24) + (buf[1]<<16));
  flag = 0;
	wait_event_interruptible(audio_queue, flag);
  //printk("bop\n");
  int i;
  unsigned char current_byte;
  unsigned long output_word;
  for( i = 0; i < 256 ; i ++){
    // matteVM
    //swapped = (num>>8) | (num<<8);

    output_word = (buf[i*4] << 8)+ buf[i*4+1];
    iowrite32(swap_int32(output_word), base_addr+i);
  }

  /*if (buf[0] == 's'){
    unsigned long i = 0;
		printk("Square output selected\n");

		for(i = 0 ; i < (addr_size/2) - 1 ; i = i + 1){
        //printk("converted address: 0x%p\n",(base_addr+i));
		     wmb();
		     iowrite32(0x80000000, base_addr+i);
		}
		//printk("%i/%i\n",i, addr_size);
		for(i = i ; i < addr_size-1 ; i = i + 1){
		     wmb();
		     iowrite32(0x0, base_addr+i);
		}
    //printk("%i/%i\n",i, addr_size);

	}
	else if (buf[0] == 't'){
    unsigned long i = 16;
    unsigned long send_value = 0;

		printk("No output selected\n");

		for(i = 0 ; i < 511 ; i = i + 1){
        //printk("converted address: 0x%p\n",(base_addr+i));
		     wmb();
		     iowrite32(send_value, base_addr+i);
		}
    //printk("%i/%i",i, addr_size);
	}
     
*/
    return count < 256 ? count : 256;
}


  static const struct file_operations proc_I2S_driver_operations = {
      .open 	= proc_I2S_driver_open,
      .read 	= proc_I2S_driver_read,
      .write 	= proc_I2S_driver_write
      //.release 	= single_driver_release
  };

static int I2S_driver_probe(struct platform_device *pdev)
{
    struct proc_dir_entry *I2S_proc_entry;
    struct resource *res;
    struct resource *r_irq;
    struct device *dev = &pdev->dev;

    int rc = 0;

    struct I2S_driver_local *lp;
     int ret = 0;

     // init Queue
     init_waitqueue_head(&audio_queue);
 
     res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
     
     if (!res) {
         dev_err(dev, "No memory resource\n");
         return -ENODEV;
     }
 
     lp = (struct I2S_driver_local *) kmalloc(sizeof(struct I2S_driver_local), GFP_KERNEL);
      if (!lp) {
        dev_err(dev, "Cound not allocate test device\n");
        return -ENOMEM;
      }

     remap_size = res->end - res->start + 1;

     lp->start = res->start;
     lp->end = res->end;
     printk("<1>Start address 0x%08x, end address 0x%08x", res->start, res->end);

     if (!request_mem_region(lp->start, remap_size, pdev->name)) {
         dev_err(dev, "Cannot request IO\n");
         return -ENXIO;
     }
 
     base_addr = ioremap(res->start, remap_size);

     if (base_addr == NULL) {
         dev_err(dev, "Couldn't ioremap memory at 0x%08lx\n",
             (unsigned long)res->start);
         ret = -ENOMEM;
         goto err_release_region;
     }

     I2S_proc_entry = proc_create(DRIVER_NAME, 0, NULL,
                        &proc_I2S_driver_operations);
     if (I2S_proc_entry == NULL) {
         dev_err(dev, "Couldn't create proc entry\n");
         ret = -ENOMEM;
         goto err_create_proc_entry;
     }


      r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
      if (!r_irq) {
        dev_info(dev, "no IRQ found\n");
        dev_info(dev, "test at 0x%08x mapped to 0x%08x\n",
          (unsigned int __force)lp->start,
          (unsigned int __force)lp->base_addr);
        return 0;
      }
      disable_irq(r_irq->start);
      lp->irq = r_irq->start;
      
      rc = request_irq(lp->irq, &I2S_driver_irq, 0, DRIVER_NAME, lp);
      if (rc) {
        dev_err(dev, "testmodule: Could not allocate interrupt %d.\n",
          lp->irq);
        goto error3;
      }
 
     printk(KERN_INFO DRIVER_NAME "probed at VA 0x%08lx, irq=%d\n",
            (unsigned long) base_addr, lp->irq);
 


    dev_set_drvdata(dev,lp);
    
    
     return 0;
    
    error3:
      free_irq(lp->irq, lp);
	  err_create_proc_entry:
	     iounmap(base_addr);
	  err_release_region:
	     release_mem_region(res->start, remap_size);
 
     return ret;
}

 static void I2S_driver_shutdown(struct platform_device *pdev)
 {	
 	int i = 0;
 	for(i=0;i<remap_size;i = i+4){
 		//iowrite32(0, res->mem_start+i);
 	}
 }

static int I2S_driver_remove(struct platform_device *pdev)
{
    struct device *dev = &pdev->dev;
    struct I2S_driver_local *lp = dev_get_drvdata(dev);
    free_irq(lp->irq, lp);
	  I2S_driver_shutdown(pdev);
  	remove_proc_entry(DRIVER_NAME, NULL);
  	iounmap(base_addr);
	  release_mem_region(lp->start, remap_size);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id I2S_driver_of_match[] = {
	{ .compatible = "xlnx,Jaxc-I2S-1.6.0", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, I2S_driver_of_match);
#else
# define I2S_driver_of_match
#endif


static struct platform_driver I2S_driver_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= I2S_driver_of_match,
	},
	.probe		= I2S_driver_probe,
	.remove		= I2S_driver_remove,
};

static int __init I2S_driver_init(void)
{

  int Fdiic;
  unsigned char I2C_slave_addr = 0b00011010;

	printk("<1>Hello module world.\n");
	printk("<1>Module parameters were (0x%08x) and \"%s\"\n", myint,
	       mystr);

 /* Fdiic = open("/dev/i2c-0");

      if(Fdiic < 0)
    {
        printf("Cannot open the IIC device\n");
 
        return 1;
    }
    Status = ioctl(Fdiic, I2C_SLAVE, I2C_slave_addr);
    write(Fdiic, 0x0c10, 2);
    write(Fdiic, 0x0810, 2);
    write(Fdiic, 0x0450, 2);
    write(Fdiic, 0x0650, 2);
    write(Fdiic, 0x0a06, 2);
    write(Fdiic, 0x0E0E, 2);
    write(Fdiic, 0x1000, 2);
    write(Fdiic, 0x0c00, 2);
    write(Fdiic, 0x1201, 2);
    close(Fdiic);*/


/*i2cset -y 0 0x1a 0x0c 0x10
i2cset -y 0 0x1a 0x08 0x10
i2cset -y 0 0x1a 0x04 0x50
i2cset -y 0 0x1a 0x06 0x50
i2cset -y 0 0x1a 0x0a 0x06
i2cset -y 0 0x1a 0x0E 0x0E
i2cset -y 0 0x1a 0x10 0x00
i2cset -y 0 0x1a 0x0c 0x00
i2cset -y 0 0x1a 0x12 0x01*/
	return platform_driver_register(&I2S_driver_driver);
}


static void __exit I2S_driver_exit(void)
{
	platform_driver_unregister(&I2S_driver_driver);
	printk(KERN_ALERT "Goodbye module world.\n");
}

module_init(I2S_driver_init);
module_exit(I2S_driver_exit);

