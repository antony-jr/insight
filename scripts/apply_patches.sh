#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Applies patches to the AppDir.
# These patches are very important ,
# Without these the package will
# not start.
# -------------------------------

# Patch to make the desktop file point to the 
# insight-wrapper which sets the path and other 
# stuff to make it work.
# This is patched because linuxdeployqt does only
# works with executables and not with shell scripts.
patch AppDir/Insight.desktop patches/Insight.desktop.patch
# ------


# ==============
# These patches does not work anymore since the package in 
# Ubuntu Xenial does not have them.

# Patch to make itcl discoverable by the bundled TCL.
# Without this you will see a package error that it
# cannot find the itcl package.
#patch AppDir/usr/lib/itcl3.4/pkgIndex.tcl patches/itcl.pkgIndex.tcl.patch
# ------

# Patch to make itk discoverable by the bundled TCL.
#patch AppDir/usr/lib/itk3.3/pkgIndex.tcl patches/itk.pkgIndex.tcl.patch
# ------
# ==============
# ==============

# We need to copy some files to itcl and itk directories and some libraries.
cp data/itcl3.4/* AppDir/usr/lib/itcl3.4/
cp -r data/itk3.3 AppDir/usr/lib/

# This patch is the most important them of all others.
# This overwrites the hardcoded tcl_pkgPath variable to 
# point to the AppImage's bundled TCL.
# This fixes -> https://bugzilla.redhat.com/show_bug.cgi?id=1105506
patch AppDir/usr/lib/tcl8.5/init.tcl patches/tcl8.5.init.tcl.patch
patch AppDir/usr/lib/tcl8.6/init.tcl patches/tcl8.6.init.tcl.patch
# ------
