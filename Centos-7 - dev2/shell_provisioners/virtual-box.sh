#!/bin/bash

sudo mount -o loop /root/VBoxGuestAdditions.iso /mnt
sudo /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
sudo rm -fr /root/VBoxGuestAdditions.iso
