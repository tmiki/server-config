#!/bin/sh

#
# This bootstrap script will be run on an Amazon Linux instance.
#

yum install epel-release -y
yum install net-tools ansible git awscli unzip -y

cd ./local_workspace/ansible/
ansible-playbook -v -i hosts/local sys_local.yml

