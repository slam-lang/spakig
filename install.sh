#!/bin/bash

pushd /tmp
curl https://raw.githubusercontent.com/slam-lang/spakig/master/spakig.asm -o spakig.asm
fasm -m 524288 spakig.asm temp.o
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o ./spakig -lc -melf_x86_64 temp.o
./spakig init
