#!/bin/sh

#
# This bootstrap script will be run on an Amazon Linux instance.
#

yum install git unzip -y
yum install --enablerepo=epel ansible -y

cd ./local_workspace/ansible/
ansible-playbook -v -i hosts/local sys_local.yml

