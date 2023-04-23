#!/bin/sh

#
# This bootstrap script will be run on an Ubuntu 20.04 LTS instance.
#

apt install git unzip -y
apt install ansible -y

cd ./local_workspace/ansible/
ansible-playbook -vvv -i hosts/local sys_local_minimum.yml
