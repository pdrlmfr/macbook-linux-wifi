#!/bin/bash
#==============================================================================
#title           :Macbook Pro Linux WIFI Enable
#author          :PDR
#date            :03/05/2015   
#==============================================================================

echo -e "==============================================================================
                            Macbook Pro Linux WIFI
                                    by: PDR
==============================================================================\n"

read -p "Press any key to continue..."

sudo apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
echo -e "\nDONE!\n"

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac
echo -e "\nDONE!\n"

modprobe wl
echo -e "\nALL DONE!\n"

echo -e "\nBYE!"
timeout 2 sleep 1
exit
