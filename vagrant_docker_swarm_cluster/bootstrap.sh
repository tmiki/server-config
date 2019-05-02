#!/bin/sh

#
# This bootstrap script will be run on an Amazon Linux 2 instance.
#

amazon-linux-extras install epel
yum install git unzip -y
yum install ansible -y

cd ./local_workspace/ansible/
ansible-playbook -v -i hosts/local sys_docker_swarm_cluster.yml

