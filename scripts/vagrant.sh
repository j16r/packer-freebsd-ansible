#!/bin/sh

mkdir -p /usr/home/vagrant/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ==' > /usr/home/vagrant/.ssh/authorized_keys
chown -R vagrant /usr/home/vagrant/.ssh
chmod -R go-rwsx /usr/home/vagrant/.ssh

pkg install -y virtualbox-ose-additions

echo "ifconfig_vtnet0=\"DHCP\"" >> /etc/rc.conf
echo "nfs_server_enable=\"YES\"" >> /etc/rc.conf
echo 'vboxguest_enable="YES"' >> /etc/rc.conf
echo 'vboxservice_enable="YES"' >> /etc/rc.conf
echo "UseDNS no" >> /etc/ssh/sshd_config
echo "AllowUsers vagrant" >> /etc/ssh/sshd_config

pkg install -y rsync samba36-smbclient

exit
