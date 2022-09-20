#!/bin/bash

pushd /tmp
curl https://raw.githubusercontent.com/slam-lang/spakig/master/spakig.fasm -o spakig.fasm
fasm -m 524288 spakig.fasm temp.o
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o ./spakig -lc -melf_x86_64 temp.o
./spakig init
