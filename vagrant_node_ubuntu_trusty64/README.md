vagrant_node_ubuntu_trusty64
============================

Vagrant set up for nodejs in ubuntu trusty 64


Summary
====
Setup use nvm (node virtual machine), so if you decide to use a different node version, you can do so easily
```
nvm install 0.11.14
nvm use 0.11.14
nvm alias default 0.11.14
```


To Start
```
vagrant up
```


Note
====
```
username: vagrant
password: vagrant

If you want to change the ip address from (192.168.10.21) to your preference, please open Vagrantfile
Vagrantfile
config.vm.network "private_network", ip: "192.168.10.21"
```
