#!/bin/bash
# Firefox basic alias to be search softwares capable
bash -c 'echo "firefox" >> /.bashrc'
# Repository for VNC
mkdir ~/.vnc
# Setup a basic fixed password to test method...
#VNC_PASSWD=1234
# Generate a random password with 15 characters that includes at least one 
capital letter and number.
VNC_PASSWD=`pwgen -c -n -1 15`
echo VNC password access: $VNC_PASSWD
echo VNC password access: $VNC_PASSWD > ~/.vnc/vnc-password.log
x11vnc -storepasswd $VNC_PASSWD ~/.vnc/passwd
