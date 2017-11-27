#!/bin/bash

export targ="x86_64-w64-mingw32"

export MY_SYS_ROOT="$PWD/prefix"

echo "my sysroot = " "$MY_SYS_ROOT"

export PATH=$PATH:${MY_SYS_ROOT}/bin

echo "PATH is now: " "$PATH"

