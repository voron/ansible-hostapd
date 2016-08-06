#!/bin/sh

DEB_VERSION=`cut -d '.' -f 1 /etc/debian_version`
if [ "$DEB_VERSION" -eq "7" ]; then
    #ansible 1.7 from backports
    #no backports - trying to add with local mirror
    grep -q wheezy-backports /etc/apt/sources.list || sed -i"" 's/^deb \(http.*\) wheezy main$/\0\ndeb \1 wheezy-backports main/'  /etc/apt/sources.list
    #still no backports - adding global mirror
    grep -q wheezy-backports /etc/apt/sources.list ||( echo "deb http://ftp.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list )
    apt-get update
fi
apt-get -y install python lsb-release sudo ansible sshpass
cd `dirname $0`
ansible -i local.host -m ping all
ansible-playbook -i local.host wifirouter.yml
