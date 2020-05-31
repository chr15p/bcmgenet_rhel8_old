obj-m := genet.o
genet-objs := bcmgenet.o bcmmii.o bcmgenet_wol.o mdio.o

LIB_MODULES := /lib/modules/$(shell uname -r)
KDIR := $(LIB_MODULES)/build
INSTALL_PATH := $(LIB_MODULES)/kernel/drivers/net/ethernet/broadcom/genet/
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

install:
	cp genet.ko $(INSTALL_PATH)
