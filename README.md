# Name
server-config

# Overview
The collection of Ansible Playbooks which can set up servers automatically.

# Description
Those playbooks run on a CentOS 7 Linux instance which runs on your local virtual machine.
It can set up remote servers, if you want so.

# Requirement
## for the Host Environment
Oracle Virtual Box 5.2.12 (or higher)
Vagrant 2.1.1 (Older thant 1.9.2 may cause some issues)

## for the Guest Environment
CentOS 7
Ansible 2 (or higher)

# How to configure each servers
## local development environment
$ ansible-playbook -v -i hosts/local sys_local_amazonlinux.yml
$ ansible-playbook -v -i hosts/local sys_local_centos7.yml


# LICENSE
MIT License


