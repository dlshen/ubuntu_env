#!/bin/bash

JAVA_HOME=/usr/local/share/java/jdk1.8.0_11
CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

ANDROID_NDK_HOME=/usr/local/share/android/ndk/android-ndk-r17c

APAHCE_ANT_HOME=/usr/local/share/apache-ant-1.9.16
PATH=$PATH:$APACHE_ANT_HOME/bin

APACHE_MAVEN_HOME=/usr/local/share/apache/apache-maven-3.6.2
PATH=$APACHE_MAVEN_HOME:$PATH

DEPOT_TOOLS=/usr/local/share/depot_tools
PATH=$PATH:$DEPOT_TOOLS

#LD_LIBRARY_PATH=${LD_LIBRARY_PATH=}:/home/devin/idc_external/platform/x86_64/lib

USERNAME=devin

NGINX_HOME=/usr/local/share/nginx/sbin
PATH=$NGINX_HOME:$PATH

FFMPEG_HOME=/usr/local/share/ffmpeg
PATH=$FFMPEG_HOME/bin:$PATH

OPENCV_INC=/home/devin/workspace/thirdparty/opencv-4.5.5/my_build_x86/install/include/opencv4
OPENCV_LIB=/home/devin/workspace/thirdparty/opencv-4.5.5/my_build_x86/install/lib
OPENCV_BIN=/home/devin/workspace/thirdparty/opencv-4.5.5/my_build_x86/install/bin


alias rt="echo $?"
alias syncbash="source ~/.bashrc"
alias seek="ps -ef|grep "
alias work="cd  /home/devin/workspace"
alias mksd="cd  /home/devin/workspace/idc_infrastructure/os/ext/hlos/basic_pkt"
alias 3rd="cd  /home/devin/workspace/thirdparty"
alias home="cd ~"
alias git-submodule-dl="git submodule"
alias git-submodule-init-dl="git submodule update --init --recursive"
alias git-submodule-update-dl="git submodule update"
alias git-branch-creator="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"
alias cls="clear"
alias editbash="vi /etc/.x/.bashrc"
alias git-branch-a="git branch -a"
alias git-branch="git branch"
alias git-clean="git clean -xdf"
alias git-source="git log --oneline --graph --decorate"
alias git-source-all="git log --oneline --graph --decorate --all"
alias git-log-n1="git log -n 1"
alias git-log-n3="git log -n 3"
alias git-log-n5="git log -n 5"
alias git-blame="git blame -L n1,n2 filename"
alias la="ls -la"
alias lsb="lsb_release -a"
alias lshw="lshw"
alias lscpu="lscpu"
alias lsmem="cat /proc/meminfo"

alias ssh-keygen-ed25519="ssh-keygen -t ed25519"
alias ssh-keygen-rsa="ssh-keygen -t rsa"
alias ssh-copy-id="ssh-copy-id -i ~/.ssh/id_rsa.pub devin@192.166.60.25"

#command
alias idc-build="./idc.sh sil_gcc -m build -p cpj_dflzm -d idcmid -v fb0"
alias idc-clean="./idc.sh sil_gcc -m clean -p cpj_dflzm -d idcmid -v fb0"
alias idc-full="./idc.sh sil_gcc -t sil -p cpj_eezi -d idcmid -v fb0 -m full"
alias idc-full-e0x="./idc.sh arm -t apu -d idcmid -p cpj_chery -v d2b5 -vh e0x -m full"
alias idc-full-t2x="./idc.sh arm -t apu -p cpj_chery -d idcmid -v d1b3 -vh t2x -m full"
alias idc-full-m32t="./idc.sh arm -t apu -p cpj_chery -d idcmid -v d0b0 -vh m32t -m full"
alias idc-full-m36t="./idc.sh arm -t apu -p cpj_chery -d idcmid -v d0b0 -vh m36t -m full"
alias idc-full-m36t-phev="./idc.sh arm -t apu -p cpj_chery -d idchigh -v h0c1 -vh m36tfl2 -m full"
alias idc-full-m6="./idc.sh arm -t apu -p cpj_dflzm -d idcmid -v f0b1 -vh m6 -m full"
alias idc-full-byd="./idc.sh arm -t apu -p cpj_byd -d idcmid -v f0b0 -vh common -m full"
alias idc-full-jxev="./idc.sh arm -t apu -p cpj_jxev -d idchigh -v h0c0 -vh c5 -m full"
alias idc-configure="./idc.sh sil_gcc -m configure -t sil -p cpj_eezi -d idcmid -v fb0"
alias idc-kill=". /etc/.x/.idc && idc_kill"
alias idc-find=". /etc/.x/.idc && idc_find"
alias idc_top="top -p `ps -aux|grep idc|grep -v grep|awk '{print $2}'|sed ':a;N;$!ba;s/\n/,/g'`"

#mcu
alias idc-mcu30-t2x="bash ./build_develop.sh chery arm release 30 t2x d1b3"
alias idc-mcu10-t2x="bash ./build_develop.sh chery arm release 10 t2x d1b3"
alias idc-mcu30-m6="bash ./build_develop.sh dflzm arm release 30 m6 f0b1"
alias idc-mcu10-m6="bash ./build_develop.sh dflzm arm release 10 m6 f0b1"

#ipc
alias ipc-list="ipcs -m"
alias ipc-rm="ipcrm -m" #ipcrm -m [shmid] 

#coredump
alias coredump-open=". /etc/.x/.coredump && coredump_open"
alias coredump-close=". /etc/.x/.coredump && coredump_close"

alias USERNAME="devin"

#redis
alias redis-restart="sudo systemctl restart redis-server"
alias redis-conf="sudo vi /etc/redis/redis.conf"
alias redis-status="sudo systemctl status redis-server"
alias redis-stop="sudo systemctl stop redis-server"

#script
. /etc/.x/.ldd
. /etc/.x/.gcc
. /etc/.x/.git
. /etc/.x/.idc
. /etc/.x/.self
. /etc/.x/.apt
