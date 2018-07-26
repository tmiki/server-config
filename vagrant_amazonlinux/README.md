
# Prerequisite
## Install the following tools

- Oracle VirtualBox 5.2.12 or higher
http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html?ssSourceSiteId=otnjp

- Vagrant 2.1.1 or higher
https://www.vagrantup.com/downloads.html

- GitBash latest version
https://gitforwindows.org/


# How to setup

1. Install necessary tools as above.

2. Run GitBash on the folder "vagrant" of this repository.

3. Install a Vagrant plug-in to manage the VM's disk volume size.
$ vagrant plugin install vagrant-disksize

4. At first you would find an error when you perform "vagrant up". 
$ vagrant up

It would be similar to the following article. 
https://qiita.com/sh-ogawa/items/a79c6eaaec4ffeb2f6c4

5. Change "box.ovf" file in your profile folder like "C:\Users\username\.vagrant.d\boxes\mvbcoding-VAGRANTSLASH-awslinux\2017.03.0.20170401\virtualbox".
You can find too long name folders. Fix them be shorter name according to the article above.

6. Perform "vagrant up" again.
$ vagrant up

7. Connect your VM via a terminal software like Tera Term Pro or Putty.
   The VM's IP address is 192.168.255.12.
   OS Username/Password is vagrant/vagrant.

