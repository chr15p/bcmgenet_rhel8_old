obj-m := genet.o
genet-objs := bcmgenet.o bcmmii.o bcmgenet_wol.o mdio.o

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

