#!/usr/bin/env bash
# The MIT License.
# Copyright (C) 2018 Antony Jr.
# -------------------------------
# Copies the libraries required
# for tcltk to the AppDir.
# -------------------------------

# Required libraries.
cp /usr/share/tcltk/* -p -r AppDir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libitcl3.4.so.1 -p AppDir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libitcl3.4.so -p AppDir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libitcl* -p AppDir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libitk* -p AppDir/usr/lib/
cp data/x86_64/lib* -p AppDir/usr/lib

# Copy only required Python 2.7 libs
mkdir AppDir/usr/lib/python2.7
# This is from strace
cp -p /usr/lib/python2.7/site.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/site.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/os.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/os.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/posixpath.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/posixpath.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/stat.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/stat.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/genericpath.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/genericpath.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/warnings.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/warnings.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/linecache.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/linecache.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/types.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/types.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/UserDict.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/UserDict.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_abcoll.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_abcoll.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/abc.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/abc.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_weakrefset.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_weakrefset.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/copy_reg.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/copy_reg.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/traceback.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/traceback.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sysconfig.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sysconfig.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/re.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/re.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_compile.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_compile.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_parse.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_parse.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_constants.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/sre_constants.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_sysconfigdata.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/_sysconfigdata.pyc AppDir/usr/lib/python2.7
mkdir AppDir/usr/lib/python2.7/plat-x86_64-linux-gnu
cp -p /usr/lib/python2.7/plat-x86_64-linux-gnu/_sysconfigdata_nd.py AppDir/usr/lib/python2.7/plat-x86_64-linux-gnu
cp -p /usr/lib/python2.7/plat-x86_64-linux-gnu/_sysconfigdata_nd.pyc AppDir/usr/lib/python2.7/plat-x86_64-linux-gnu
cp -p /usr/lib/python2.7/sitecustomize.pyc AppDir/usr/lib/python2.7
cp -p -r /usr/lib/python2.7/encodings AppDir/usr/lib/python2.7/
cp -p /usr/lib/python2.7/codecs.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/codecs.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/copy.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/copy.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/weakref.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/weakref.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/collections.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/collections.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/keyword.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/keyword.pyc AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/heapq.py AppDir/usr/lib/python2.7
cp -p /usr/lib/python2.7/heapq.pyc AppDir/usr/lib/python2.7

rm AppDir/AppRun
