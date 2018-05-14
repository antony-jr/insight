#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Copies the libraries required
# for tcltk to the AppDir.
# -------------------------------

# Required libraries.
cp /usr/share/tcltk/* -p -r AppDir/usr/lib/
cp /usr/lib/tcltk -p -r AppDir/usr/lib/
cp /usr/lib/libitcl3.4.so.1 -p AppDir/usr/lib/
cp /usr/lib/libitcl3.4.so -p AppDir/usr/lib/
cp /usr/lib/libitclstub3.4.a -p AppDir/usr/lib/
cp /usr/lib/libitk3.3.so.1 -p AppDir/usr/lib/
cp /usr/lib/libitk3.3.so -p AppDir/usr/lib/
cp /usr/lib/libitkstub3.3.a -p AppDir/usr/lib/
cp /usr/lib/python2.7 -p -r AppDir/usr/lib/
rm AppDir/AppRun
