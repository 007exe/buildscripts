#!/bin/sh
KDE_VERSION=4.8.4

kdebase="kde-baseapps \
	konsole \
	kate \
	kde-wallpapers \
	kde-workspace \
	kdebase-runtime"

kdeedu="libkdeedu \
	blinken \
	cantor \
	kalgebra \
	kalzium \
	kanagram \
	kbruch \
	kgeography \
	khangman \
	kig \
	kiten \
	klettres \
	kmplot \
	kstars \
	ktouch \
	kturtle \
	kwordquiz \
	marble \
	parley \
	rocs \
	step"

kdegraphics="libkipi \
	libkexiv2 \
	libkdcraw \
	libksane \
	okular \
	gwenview \
	kamera \
	kcolorchooser \
	kgamma \
	kolourpaint \
	kruler \
	ksaneplugin \
	ksnapshot \
	svgpart \
	mobipocket \
	kdegraphics-strigi-analyzer \
	kdegraphics-thumbnailers"

kdebindings="smokegen \
	smokeqt \
	qtruby \
	perlqt \
	smokekde \
	korundum \
	perlkde \
	pykde4 \
	kross-interpreters"

plasma_active="contour \
	plasma-active"

kdeaccessibility="jovie \
	kaccessible \
	kmag \
	kmousetool \
	kmouth"

kdeutils="ark \
	filelight \
	kcalc \
	kcharselect \
	kdf \
	kfloppy \
	kgpg \
	kremotecontrol \
	ksecrets \
	ktimer \
	kwallet \
	printer-applet \
	superkaramba \
	sweeper"

DONE_MODLIST=""

MODLIST="
kdelibs \
	kdepimlibs \
	analitza \
	kactivities \
	$kdebase \
	kdesdk \
	$kdegraphics \
	$kdebindings \
	kde-workspace \
	$kdeaccessibility \
	$kdeutils \
	kdemultimedia \
	kdenetwork \
	oxygen-icons \
	kdeadmin \
	kdeartwork \
	kdegames \
	kdetoys \
	kdepim \
	kdepim-runtime \
	$kdeedu \
	kdewebdev \
	kdeplasma-addons \
	$plasma_active \
	kde-l10n-ru \
	kde-l10n-uk"


CWD=`pwd`
LOGFILE="$CWD/kde-$KDE_VERSION-build.log"
for i in $MODLIST ; do
	#mkpkg -si -bt api:$i -bv $KDE_VERSION -bb 1 || exit 1
	# Using local ABUILDS: version bump here 
	echo "Building $i" >> $LOGFILE
	if mkpkg -si -bt api:$i -bv $KDE_VERSION -bb 1; then
		echo "$i: SUCCESS" >> $LOGFILE
	else 
		echo "$i: FAILURE" >> $LOGFILE
	fi

done


