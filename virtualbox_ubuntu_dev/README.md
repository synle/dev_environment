linuxmint_environment_setup
===========================


Setup the environment for development.


Remove craps from Linux Mint XCFE
```
sudo apt-get remove -y transmission-*
sudo apt-get remove -y gthumb*
sudo apt-get remove -y simple-scan
sudo apt-get remove -y thunderbird*
sudo apt-get remove -y midori
sudo apt-get remove -y hexchat*
sudo apt-get remove -y pidgin*
sudo apt-get remove -y banshee
sudo apt-get remove -y xfburn
sudo apt-get remove -y gimp
sudo apt-get remove -y libreoffice-math
sudo apt-get remove -y libreoffice-draw
```


Tips for speeding up linux mint:
src: https://sites.google.com/site/easylinuxtipsproject/3
sudo vim /etc/sysctl.conf
```
# Reduce the swap tendency
vm.swappiness = 10

# Improve cache management
vm.vfs_cache_pressure=50
```


Add yourself to vbox_sf to get access to shared folder
http://askubuntu.com/questions/481559/how-to-automatically-mount-a-folder-and-change-ownership-from-root-in-virtualbox
```
  sudo usermod -G vboxsf -a myusername
```
