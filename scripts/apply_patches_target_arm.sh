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
patch AppDir/Insight.desktop patches/Insight.desktop.target_arm-2.patch
# ------
