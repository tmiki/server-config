#!/bin/sh

yum install git unzip -y
yum install --enablerepo=epel ansible -y

cd ./local_workspace/ansible/
ansible-playbook -v -i hosts/local sys_study_networking.yml

uname -a
echo "This VM is for the studying purpose only."

