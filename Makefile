obj-m := wpthis.o
KDIR := ~/vision-2.6.32-g814e0a1
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
clean:
	rm -rf modules.order Module.symvers wpthis.ko wpthis.o wpthis.mod.* .wpthis.*.cmd .tmp_versions
