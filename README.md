# bcmgenet_rhel8
a version of the broadcom genet driver for rhel8 on rpi4 running uefi from rpi4-uefi.dev 

This is mainly copied from Linus' tree (24085f70a6e1b0cb647ec92623284641d8270637  Tue May 12 11:06:26 2020 -0700) and then hacked to backport it to RHEL8. Its been tested on the 4.18.0-193.1.2.el8_2.aarch64 kernel and I expect it to work elsewhere but I haven't extensivly tested it as yet.

This is experimental, unsupported, may kill kittens, and will quite possibly panic your kernel if you hit an edge case.

To compile simply run 
```
make
```
Then either install the module directly using ```insmod genet.ko``` or ```make install``` and reboot
```

