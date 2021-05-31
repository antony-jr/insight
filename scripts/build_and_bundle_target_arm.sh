#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Compiles insight from source
# and installs in the AppDir.
# -------------------------------
# 
install_dir=$(pwd)/AppDir
cd insight
autoconf
chmod +x configure
./configure	--prefix=/usr/.						\
		--disable-binutils					\
		--disable-elfcpp					\
		--disable-gas						\
		--disable-gold						\
		--disable-gprof						\
		--disable-ld						\
		--disable-rpath						\
		--disable-zlib						\
		--without-libunwind					\
		--without-isl						\
		--host=x86_64-pc-linux-gnu				\
		--target=arm-linux-gnueabi				\
		--disable-werror

make -j$(nproc)
make DESTDIR=$install_dir install -j$(nproc)
cd ..

# Patch to make the desktop file point to the 
# arm version of insight which sets the path and other 
patch AppDir/Insight.desktop patches/Insight.desktop.target_arm.patch
# ------

# Patch to make the insight wrapper work correctly.
patch AppDir/usr/bin/insight-wrapper patches/insight-wrapper.target_arm.patch

