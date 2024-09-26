#!/bin/bash

function idc_find() {
    ps -aux|grep idc|grep -v grep
}

function idc_kill() {
    ps -aux|grep idc|grep -v grep|awk '{print $2}'|xargs kill -9
}

alias idc-full-apu-jxev="./idc.sh arm -t apu -p cpj_jxev -d d500 -v h0c0 -vh c5 -c Release -m full"
alias idc-full-rpu-jxev="./idc.sh arm -t rpu -p cpj_jxev -d d500 -v h0c0 -vh c5 -c Release -m full"
alias idc-full-sil-jxev="./idc.sh sil_gcc -t sil -p cpj_jxev -d d500 -v h0c0 -vh c5 -c Release -m full"

alias idc-full-apu-jxev-pf1="./idc.sh arm -t apu -p cpj_jxev -d d500 -v h0c2 -vh pf1 -c Release -m full"

alias idc-full-apu-m3xh="./idc.sh arm -t apu -p cpj_chery -d d500 -v h2c1 -vh m3xh -c Release -m full"
alias idc-full-rpu-m3xh="./idc.sh arm -t rpu -p cpj_chery -d d500 -v h2c1 -vh m3xh -c Release -m full"
alias idc-full-sil-m3xh="./idc.sh sil_gcc -t sil -p cpj_chery -d d500 -v h2c1 -vh m3xh -c Release -m full"

alias idc-full-apu-e0x="./idc.sh arm -t apu -p cpj_chery -d d300 -v d2b5 -vh e0x -c Release -m full"
alias idc-full-rpu-e0x="./idc.sh arm -t rpu -cr 10 -p cpj_chery -d d300 -v d2b5 -vh e0x -c Release -m full"
alias idc-full-sil-e0x="./idc.sh sil_gcc -t sil -p cpj_chery -d d300 -v d2b5 -vh e0x -c Release -m full"

alias idc-full-apu-t2x="./idc.sh arm -t apu -p cpj_chery -d d100 -v d1b3 -vh t2x -c Release -m full"
alias idc-full-rpu-t2x="./idc.sh arm -t rpu -cr 10 -p cpj_chery -d d100 -v d1b3 -vh t2x -c Release -m full"
alias idc-full-sil-t2x="./idc.sh sil_gcc -t sil -p cpj_chery -d d100 -v d1b3 -vh t2x -c Release -m full"

alias idc-full-apu-m6="./idc.sh arm -t apu -p cpj_dflzm -d d100 -v f0b1 -vh m6 -c Release -m full"
alias idc-full-rpu-m6="./idc.sh arm -t rpu -cr 10 -p cpj_dflzm -d d100 -v f0b1 -vh m6 -c Release -m full"
alias idc-full-sil-m6="./idc.sh sil_gcc -t sil -p cpj_dflzm -d d100 -v f0b1 -vh m6 -c Release -m full"

alias idc-full-apu-t1gc="./idc.sh arm -t apu -p cpj_chery -d d100a -v d4b7 -vh t1gc -m full"
alias idc-full-rpu-t1gc="./idc.sh arm -t rpu -cr 10 -p cpj_chery -d d100a -v d4b7 -vh t1gc -m full"
alias idc-full-sil-t1gc="./idc.sh sil_gcc -t sil -p cpj_chery -d d100a -v d4b7 -vh t1gc -m full"

alias idc-full-apu-v2x="./idc.sh arm -t apu -p cpj_chery -d d300e -v d3b6 -vh v2x -m full"
alias idc-full-rpu-v2x="./idc.sh arm -t rpu -cr 10 -p cpj_chery -d d300e -v d3b6 -vh v2x -m full"
alias idc-full-sil-v2x="./idc.sh sil_gcc -t sil -p cpj_chery -d d300e -v d3b6 -vh v2x -m full"




