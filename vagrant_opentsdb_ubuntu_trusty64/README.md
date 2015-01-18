Vagrant_opentsdb_ubuntu_trusty64
================================

Vagrant script for opentsdb vagrant set up in ubuntu trusty 64


Requirements
===
```
Vagrant : https://www.vagrantup.com/downloads.html

VirtualBox : https://www.virtualbox.org/wiki/Downloads
VirtualBox 4.3.18 Oracle VM VirtualBox Extension Pack
```

Version
===
```
TCollector
./hbase-0.98.7-hadoop2-bin.tar.gz
./opentsdb-2.0.0.tar.gz
./tcollector.tar.gz
```

Start up services
====
By default, the service should be set up already. If somehow they don't start up properly, you can start them up with these commands.

```
sudo su

#Start HBase
/opt/hbase/bin/start-hbase.sh

#Start OpenTSDB
nohup /opt/opentsdb/build/tsdb tsd --config=/opt/opentsdb/src/opentsdb.conf &

#start TCollector
/opt/tcollector/startstop start
```

To Access
===
```
hbase:
192.168.10.21:60010

opentsdb
192.168.10.21:4242

For sample data, you can use the following metrics:
proc.loadavg.15min
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
