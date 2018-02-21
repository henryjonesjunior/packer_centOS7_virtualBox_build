#!bin/bash
mount -o ro /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm -rf VBoxGuestAdditions.iso