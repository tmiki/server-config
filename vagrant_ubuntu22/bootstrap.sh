#!/bin/sh

#
# This bootstrap script will be run on an Ubuntu 22.04 LTS instance.
#

apt-get update -y
apt-get install git unzip -y
apt-get install ansible -y

cd ./local_workspace/ansible/
ansible-playbook -vvv -i hosts/local sys_local_minimum.yml
