#!/bin/sh

#
# This bootstrap script will be run on an Amazon Linux 2023 instance.
#

dnf update -y
dnf install git unzip -y
dnf install ansible -y

cd ./local_workspace/ansible/
ansible-playbook -v -i hosts/local sys_local_minimum.yml
