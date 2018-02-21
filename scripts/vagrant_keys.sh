#!bin/bash
mkdir -m 0700 -p /home/vagrant/.ssh
curl -s https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys