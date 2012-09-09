#!/bin/bash

KVER=${KVER:-3.4.7}

#mkpkg -si -bt api:kernel -bv $KVER
MODLIST="nvidia-kernel \
nvidia-kernel-legacy173 \
nvidia-kernel-legacy96 \
vhba-module \
virtualbox-kernel \
broadcom-wl \
bbswitch \
acpi_call"


for i in $MODLIST ; do
	KERNEL=$KVER mkpkg -bt api:$i
done

