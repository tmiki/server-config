# Name
server-config

# Overview
The collection of Ansible Playbooks which can set up servers automatically.

# Description
Those playbooks run on a CentOS 7 Linux instance which runs on your local virtual machine.
It can set up remote servers, if you want so.

# Requirement
## for the Host Environment
Oracle Virtual Box 5 (or over)
Vagrant 1.8.3 (Newer version may cause some issues)

## for the Guest Environment
CentOS 7
Ansible 2 (or over)

# How to configure each servers
## local development environment
$ ansible-playbook -vvv -i hosts/localdev sys_localdev.yml


# LICENSE
MIT License


