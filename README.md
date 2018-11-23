
# Overview
The collection of Ansible Playbooks which can set up servers automatically.

# Description
Those playbooks run on a CentOS 7 / Amazon Linux instance which runs on your local virtual machine.
They can also set up remote servers, if you want so.  

# Requirement
## for the Host Environment
Oracle Virtual Box 5.2.12 (or higher)  
Vagrant 2.1.1 (Older than 1.9.2 may cause some issues)  

## for the Guest Environment. (They can be installed an Ansible Playbook described below.)
CentOS 7 / Amazon Linux  
Ansible 2 (or higher)  

# How to build&configure each servers
## local development environment
You can run an Ansible Playbook starts with the "sys\_\*" prefix to configure your local Linux instance.

```
$ ansible-playbook -v -i hosts/local sys_local_amazonlinux.yml  
```

```
$ ansible-playbook -v -i hosts/local sys_local_centos7.yml  
```


## Amazon Lightsail 
Please refer another README.md in the "ansible/" directory.

# LICENSE
MIT License  


