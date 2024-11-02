#!/bin/sh

#
# This bootstrap script will be run on a Debian 12 instance.
#

apt-get update -y
apt-get install git unzip -y
apt-get install ansible -y

cd ./local_workspace/ansible/
ansible-playbook -vvv -i hosts/local sys_local_minimum.yml
