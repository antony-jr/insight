#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Copies the libraries required
# for tcltk to the AppDir.
# -------------------------------

# Required libraries.
cp /usr/share/tcltk/* -p -r AppDir/usr/lib/
cp /usr/share/tcltk -p -r AppDir/usr/share/
cp /usr/bin/tclsh8.5 -p -r AppDir/usr/bin/
cp /usr/include/tcl8.5 -p -r AppDir/usr/include/
cp /usr/lib/tcl8.5 -p -r AppDir/usr/lib/
cp /usr/lib/tk8.5 -p -r AppDir/usr/lib/
cp /usr/lib/tcltk -p -r AppDir/usr/lib/
mkdir AppDir/usr/lib/x86_64-linux-gnu
cp /usr/lib/x86_64-linux-gnu/libtcl8.5.a -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libtclstub8.5.a -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/tcl8.5 -p -r AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/tk8.5 -p -r AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libtk8.5.a -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libtkstub8.5.a -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libtk8.5.so -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/lib/x86_64-linux-gnu/libtk8.5.so.0 -p AppDir/usr/lib/x86_64-linux-gnu/
cp /usr/share/lintian -p -r AppDir/usr/share/
mkdir AppDir/usr/share/aclocal
cp /usr/share/aclocal/tcl8.5.m4 -p AppDir/usr/share/aclocal/
cp /usr/lib/libitcl3.4.so.1 -p AppDir/usr/lib/
cp /usr/lib/libitcl3.4.so -p AppDir/usr/lib/
cp /usr/lib/libitclstub3.4.a -p AppDir/usr/lib/
cp /usr/lib/libitk3.3.so.1 -p AppDir/usr/lib/
cp /usr/lib/libitk3.3.so -p AppDir/usr/lib/
cp /usr/lib/libitkstub3.3.a -p AppDir/usr/lib/
cp /usr/lib/python2.7 -p -r AppDir/usr/lib/
rm AppDir/AppRun

# Patches.
cp patches/Insight.desktop.patched AppDir/Insight.desktop
cp patches/itcl.pkgIndex.tcl.patched AppDir/usr/lib/itcl3.4/pkgIndex.tcl
cp patches/itk.pkgIndex.tcl.patched AppDir/usr/lib/itk3.3/pkgIndex.tcl
