linuxmint_environment_setup
===========================


Setup the environment for development.


Remove craps from Linux Mint XCFE
```
sudo apt-get remove -y transmission-*;
sudo apt-get remove -y gthumb*;
sudo apt-get remove -y simple-scan;
sudo apt-get remove -y thunderbird*;
sudo apt-get remove -y hexchat*;
sudo apt-get remove -y pidgin*;
sudo apt-get remove -y banshee;
sudo apt-get remove -y xfburn;
sudo apt-get remove -y gimp;
sudo apt-get remove -y libreoffice-math;
sudo apt-get remove -y libreoffice-draw;
sudo apt-get remove -y libreoffice-calc;
sudo apt-get remove -y xfburn*;
sudo apt-get remove -y pulseaudio;
sudo apt-get remove -y hexchat*;
sudo apt-get remove -y firefox*;
sudo apt-get remove -y thunderbird*;
sudo apt-get remove -y pulseaudio*;
sudo apt-get remove -y banshee;

sudo apt-get autoremove -y;
sudo apt-get autoclean -y;
```


install
```
#third party repo
echo "add third party repo packages";
curl -sL https://deb.nodesource.com/setup | sudo bash -;
sudo apt-get update -y;
sudo apt-get upgrade -y;
sudo apt-get install -f -y;

#install here
sudo apt-get install -y curl; 
sudo apt-get install -y build-essential;
sudo apt-get install -y git-core;
sudo apt-get install -y openjdk-7-jdk;
sudo apt-get install -y python-dev;
sudo apt-get install -y virtualbox-guest-x11;
sudo apt-get install -y python-software-properties;
sudo apt-get install -y software-properties-common;
sudo apt-get install -y g++;
sudo apt-get install -y python;
sudo apt-get install -y supervisor;
sudo apt-get install -y automake;
sudo apt-get install -y gnuplot;
sudo apt-get install -y unzip;
sudo apt-get install -y vim;
sudo apt-get install -y git;
sudo apt-get install -y maven;
sudo apt-get install -y xclip;
sudo apt-get install -y make;
sudo apt-get install -y openssh-server;
sudo apt-get install -f -y;

#nodejs
sudo apt-get -y install nodejs npm;
sudo apt-get install -f -y;
sudo cp /usr/bin/nodejs /usr/bin/node

echo "install nodejs depdencies";
sudo npm install -g yo karma-cli bower mocha grunt-cli forever gulp nodemon;


#other stuffs
sudo apt-get install -y redis-server;
sudo apt-get install -y memcached;
sudo apt-get install -y mysql-server mysql-client;
```


install for gui (xcfe or lxde):
```
sudo apt-get install -y midori;
sudo apt-get install -y terminator;
```

Setup Git
```
git config --global color.ui true
git config --global push.default matching
git config --global user.name "Sy Le"
git config --global user.email "lenguyensy@gmail.com"
```


Tips for speeding up linux mint:
src: https://sites.google.com/site/easylinuxtipsproject/3
sudo vim /etc/sysctl.conf
```
sudo echo "# Reduce the swap tendency" >> /etc/sysctl.conf
sudo echo "vm.swappiness = 1" >> /etc/sysctl.conf

sudo echo "# Improve cache management" >> /etc/sysctl.conf
sudo echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf
```


Setup Selenium
```
  chmod 761 /usr/bin/selenium_standalone
  
  #!/bin/sh
  java -jar /opt/selenium-server-standalone-2.45.0.jar
```

Add yourself to vbox_sf to get access to shared folder
http://askubuntu.com/questions/481559/how-to-automatically-mount-a-folder-and-change-ownership-from-root-in-virtualbox
```
  sudo usermod -G vboxsf -a syle
```
