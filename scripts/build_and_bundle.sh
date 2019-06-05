#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Compiles insight from source
# and installs in the AppDir.
# -------------------------------
install_dir=$(pwd)/AppDir
cd insight/
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
		--without-isl

make -j$(nproc)
make DESTDIR=$install_dir install -j$(nproc)
cd ..
