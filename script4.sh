#!/bin/bash
echo "Hi there! Lets create a partition in a rebooted clean slate VM."
echo " Select all default values by pressing enter at the prompts to"
echo " create the parition, enter n to create a new partition, w to"
echo " write and save changes, and m for command help"

echo " *****IN ORDER FOR THIS SCRIPT TO RUN, SELECT PARTITION 2: sda2, file"
echo "  must also be run on a VM with clean slate every reboot****"
echo " "
echo " "
sleep 5s
#create new partition on clean slate VM
# enter n for new partition, p for primary, 2 as partition number,
# 2048 ad first sector, 5000 as last sector, and w to write and save changes
sudo fdisk /dev/sda
#sleep allows easier reading or echo comments
sleep 3s
#empty echo for easier reading of comments
echo  ""
echo "Now that a partition has been made, take a look at the output of"
echo " command fdisk -l command"

sleep 2s
#echo command so user can get a feel of how it would run as a lone command
echo "fdisk -l"
sleep 3s
echo ""
sudo fdisk -l

echo ""
echo ""
echo "we can now create swap space from the partition we created"
sleep 2s
echo " "
sudo mkswap /dev/sda2
sudo swapon /dev/sda2
echo "***HERE WE CAN SEE THE CURRENT SWAP USAGE RUNNING THE COMMAND: FREE***"
sleep 3
echo ""
echo ""
free
echo ""
echo ""
sleep 3s
echo "***Now take a look at the size and utilization of your current"
echo " mounted filesystems***"
echo ""
sleep 3s
df
