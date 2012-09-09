#!/bin/bash

KVER=${KVER:-3.4.7}

#mkpkg -si -bt api:kernel -bv $KVER
MODLIST="nvidia-kernel-uksm \
nvidia-kernel-legacy173-uksm \
nvidia-kernel-legacy96-uksm \
vhba-module-uksm \
virtualbox-kernel-uksm \
broadcom-wl-uksm \
bbswitch-uksm \
acpi_call-uksm"


for i in $MODLIST ; do
	KERNEL=${KVER}uksm mkpkg -bt api:$i
done

