#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
#  Purges unwanted files from 
#  the AppDir to reduce size.
# -------------------------------

# We already compiled so no dev-packages.
rm -rf AppDir/usr/include

# Remove unwanted binaries.
rm -rf AppDir/usr/bin/addr2line \
       AppDir/usr/bin/c++filt \
       AppDir/usr/bin/gdb \
       AppDir/usr/bin/gprof \
       AppDir/usr/bin/ld \
       AppDir/usr/bin/objcopy \
       AppDir/usr/bin/readelf \
       AppDir/usr/bin/strip \
       AppDir/usr/bin/ar \
       AppDir/usr/bin/elfedit \
       AppDir/usr/bin/gdb-add-index \
       AppDir/usr/bin/ld.bfd \
       AppDir/usr/bin/objdump \
       AppDir/usr/bin/size \
       AppDir/usr/bin/as \
       AppDir/usr/bin/gcore \
       AppDir/usr/bin/gdbserver \
       AppDir/usr/bin/nm \
       AppDir/usr/bin/ranlib \
       AppDir/usr/bin/strings

# Remove ubuntu specific files
# Just in case
rm -rf AppDir/usr/x86_64-pc-linux-gnu \
       AppDir/usr/lib/x86_64-linux-gnu

# Remove unwanted doc files and locales
rm -rf AppDir/usr/share/doc \
       AppDir/usr/share/man \
       AppDir/usr/share/info \
       AppDir/usr/share/locale

