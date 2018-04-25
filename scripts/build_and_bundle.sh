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
./configure --prefix=/usr/
make -j$(nproc)
make DESTDIR=$install_dir install -j4
cd ..
