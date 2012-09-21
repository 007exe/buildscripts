#!/bin/bash

KVER=${KVER:-3.0.42}

#mkpkg -si -bt api:kernel -bv $KVER
MODLIST="nvidia-kernel-lts \
nvidia-kernel-legacy173-lts \
nvidia-kernel-legacy96-lts \
vhba-module-lts \
virtualbox-kernel-lts \
broadcom-wl-lts \
bbswitch-lts \
acpi_call-lts \
lirc-kernel-lts"


for i in $MODLIST ; do
	KERNEL=${KVER}lts mkpkg -bt api:$i
done

