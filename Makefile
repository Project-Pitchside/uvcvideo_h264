KERNELDIR ?= /lib/modules/`uname -r`/build
PWD := $(shell pwd)
INSTALLDIR ?= .
CROSS_COMPILE ?=
CC ?= $(CROSS_COMPILE)gcc

MODULE_NAME := uvcvideo_h264
RESMAIN_CORE_OBJS := uvc_driver.o 
RESMAIN_GLUE_OBJS := uvc_driver.o uvc_queue.o uvc_v4l2.o uvc_video.o uvc_ctrl.o uvc_status.o uvc_isight.o nalu.o uvc_debugfs.o uvc_metadata.o uvc_entity.o
$(MODULE_NAME)-objs := $(RESMAIN_CORE_OBJS) $(RESMAIN_GLUE_OBJS)
obj-m := uvcvideo_h264.o

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

install: all
	sudo rmmod uvcvideo
	sudo insmod ${MODULE_NAME}.o

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions *.markers *.symvers *.order

.PHONY:
	modules modules_install clean

