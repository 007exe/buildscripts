#!/bin/bash

KVER=${KVER:-3.5.4}

#mkpkg -si -bt api:kernel -bv $KVER
MODLIST="nvidia-kernel-med \
nvidia-kernel-legacy173-med \
nvidia-kernel-legacy96-med \
vhba-module-med \
virtualbox-kernel-med \
broadcom-wl-med \
bbswitch-med \
acpi_call-med \
lirc-kernel-med"


for i in $MODLIST ; do
	KERNEL=${KVER}-med mkpkg -bt api:$i
done

