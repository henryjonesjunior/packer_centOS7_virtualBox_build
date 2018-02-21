#!bin/bash
shred -uv /etc/udev/rules.d/70-persistent-net.rules
sed -i '/^UUID/d' /etc/sysconfig/network-scripts/ifcfg-enp0s3
sed -i '/^HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-enp0s3

# remove tmp files
rm -rf /tmp/*

# Remove Virtualbox specific files
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*
rm -rf *.iso *.iso.? /tmp/vbox /home/vagrant/.vbox_version

# clean log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

yum clean all