#!/bin/bash;
#install 
#sudo apt-get install -y lxde


mkdir ~/Downloads

echo "Setting up eclipse in the menu";
sudo echo "[Desktop Entry]" > /usr/share/applications/eclipse.desktop;
sudo echo "Name=Eclipse EE" >> /usr/share/applications/eclipse.desktop;
sudo echo "Comment=Eclipse EE" >> /usr/share/applications/eclipse.desktop;
sudo echo "GenericName=Text Editor" >> /usr/share/applications/eclipse.desktop;
sudo echo "Exec=/opt/eclipse/eclipse" >> /usr/share/applications/eclipse.desktop;
sudo echo "Icon=/opt/eclipse/icon.xpm" >> /usr/share/applications/eclipse.desktop;
sudo echo "Type=Application" >> /usr/share/applications/eclipse.desktop;
sudo echo "StartupNotify=true" >> /usr/share/applications/eclipse.desktop;
sudo echo "Categories=GNOME;GTK;Utility;TextEditor;Development;" >> /usr/share/applications/eclipse.desktop;
sudo echo "MimeType=text/plain;" >> /usr/share/applications/eclipse.desktop;



echo "Setting up intelliJ in the menu";
sudo echo "[Desktop Entry]" > /usr/share/applications/intellij.desktop;
sudo echo "Name=intellij" >> /usr/share/applications/intellij.desktop;
sudo echo "Comment=intellij" >> /usr/share/applications/intellij.desktop;
sudo echo "GenericName=Text Editor" >> /usr/share/applications/intellij.desktop;
sudo echo "Exec=/opt/intellij/bin/idea.sh" >> /usr/share/applications/intellij.desktop;
sudo echo "Icon=/opt/intellij/bin/idea.png" >> /usr/share/applications/intellij.desktop;
sudo echo "Type=Application" >> /usr/share/applications/intellij.desktop;
sudo echo "StartupNotify=true" >> /usr/share/applications/intellij.desktop;
sudo echo "Categories=GNOME;GTK;Utility;TextEditor;Development;" >> /usr/share/applications/intellij.desktop;
sudo echo "MimeType=text/plain;" >> /usr/share/applications/intellij.desktop;

echo "Setting up SublimeText 2 in the menu";
sudo echo "[Desktop Entry]" > /usr/share/applications/sublime2.desktop;
sudo echo "Name=SublimeText 2" >> /usr/share/applications/sublime2.desktop;
sudo echo "Comment=SublimeText 2" >> /usr/share/applications/sublime2.desktop;
sudo echo "GenericName=Text Editor" >> /usr/share/applications/sublime2.desktop;
sudo echo "Exec=/opt/sublime2/sublime_text" >> /usr/share/applications/sublime2.desktop;
sudo echo "Icon=/opt/sublime2/Icon/256x256/sublime_text.png" >> /usr/share/applications/sublime2.desktop;
sudo echo "Type=Application" >> /usr/share/applications/sublime2.desktop;
sudo echo "StartupNotify=true" >> /usr/share/applications/sublime2.desktop;
sudo echo "Categories=GNOME;GTK;Utility;TextEditor;Development;" >> /usr/share/applications/sublime2.desktop;
sudo echo "MimeType=text/plain;" >> /usr/share/applications/sublime2.desktop;

echo "setup custom aliases";
cd ~/
wget https://raw.githubusercontent.com/synle/virtualbox_ubuntu_dev/master/.bash_aliases



#setup script;
echo "env COMPRESSION=NONE HBASE_HOME=/opt/hbase/ /opt/opentsdb/src/create_table.sh" >> ~/Desktop/create_tsdb_table.sh;
echo "sudo /opt/hbase/bin/start-hbase.sh" >> ~/Desktop/start_hbase_tsdb_collector.sh;
echo "sudo /opt/tcollector/startstop start" >> ~/Desktop/start_hbase_tsdb_collector.sh;
echo "sudo /opt/opentsdb/build/tsdb tsd --config=/opt/opentsdb/src/opentsdb.conf" >> ~/Desktop/start_hbase_tsdb_collector.sh;


echo "remove craps" ;
sudo apt-get remove -y libreoffice*;
sudo apt-get remove -y evolution*;
sudo apt-get remove -y transmission*;
sudo apt-get remove -y gimp*;
sudo apt-get remove -y inkscape*;
sudo apt-get remove -y shotwell*;
sudo apt-get remove -y simple-scan*;
sudo apt-get remove -y brasero*;
sudo apt-get remove -y empathy*;
sudo apt-get remove -y iceweasel;
sudo apt-get remove -y sound-recorder*;
sudo apt-get remove -y firefox*;
sudo apt-get remove -y thunderbird*;
sudo apt-get remove -y banshee;
sudo apt-get remove -y xfburn*;
sudo apt-get remove -y hexchat*;
sudo apt-get remove -y gthumb*;
sudo apt-get remove -y ristretto*;
sudo apt-get remove -y pidgin*;
sudo apt-get remove -y gnumeric*;
sudo apt-get remove -y abiword*;
sudo apt-get remove -y byobu*;
sudo apt-get remove -y galculator;
sudo apt-get remove -y imagemagick;
sudo apt-get remove -y lxmusic;
#sudo apt-get autoclean -y;
#sudo apt-get autoremove -y;
#sudo apt-get install -f -y;

echo "add third party repo packages";
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list';
curl -sL https://deb.nodesource.com/setup | sudo bash -;
sudo apt-get update;
sudo apt-get install -f -y;

echo "install dep";
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
sudo apt-get install -y gpicview;
sudo apt-get install -y maven;
sudo apt-get install -y terminator;
#sudo apt-get install -y lxde;
sudo apt-get install -y xclip;
sudo apt-get install -y make;
sudo apt-get install -y openssh-server;
sudo apt-get install -y midori;
sudo apt-get install -f -y;

echo "setup nodejs";
sudo apt-get -y install nodejs;
sudo apt-get install -f -y;

echo "generate ssh keys";
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N '';

#setup git;
echo "setup git config"
git config --global user.email "lenguyensy@gmail.com";
git config --global user.name "Sy Le";
git config --global push.default matching;
git config --global core.autocrlf true
git config --global color.ui auto
git config --global color.diff true


#server and stuffs;
echo "change owner to sy";
sudo chown -R /opt sy;

cd /opt;
echo "download hadoop";
sudo wget http://apache.claz.org/hbase/hbase-0.98.8/hbase-0.98.8-hadoop2-bin.tar.gz;

echo "download opentsdb";
sudo wget https://github.com/OpenTSDB/opentsdb/releases/download/v2.1.0RC1/opentsdb-2.1.0RC1.tar.gz;

echo "download tcollector";
sudo git clone https://github.com/OpenTSDB/tcollector.git;

echo "download eclipse ee";
sudo wget http://mirrors.ibiblio.org/pub/mirrors/eclipse/technology/epp/downloads/release/luna/SR1/eclipse-jee-luna-SR1-linux-gtk-x86_64.tar.gz;

echo "Download sublime 2"
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2;

echo "download ideaIC"
sudo wget http://download.jetbrains.com/idea/ideaIC-14.0.2.tar.gz;

echo "unzip and remove tarballs";
sudo tar -xvf hbase*.gz;
sudo tar -xvf opentsdb*.gz;
sudo tar -xvf ideaIC*.gz;
sudo tar -xvf eclipse*.gz;
sudo tar -xvf Sublime*.bz2;

echo "move downloads to ~/Downloads";
sudo mv *gz *.zip *.bz2 ~/Downloads/;


echo "install stuff";
sudo mv hbase*/ hbase;
sudo mv opentsdb*/ opentsdb;
sudo mv tcollector*/ tcollector;
sudo mv eclipse*/ eclipse;
sudo mv idea-IC*/ intellij;
sudo Sublime\ Text\ 2 sublime2;

echo "change owner to be sy";
sudo chown -R sy /opt;





echo "setup hbase";
cd /opt/hbase;
mkdir /opt/hbase/data;
mkdir /opt/hbase/zookeeper;
cd /opt/hbase/conf;
rm -f hbase-site.xml;
wget https://raw.githubusercontent.com/synle/vagrant_opentsdb_ubuntu_trusty64/master/shared/hbase-site.xml;


echo "setup tsdb";
cd /opt/opentsdb/src;
rm -f opentsdb.conf;
wget https://raw.githubusercontent.com/synle/vagrant_opentsdb_ubuntu_trusty64/master/shared/opentsdb.conf;
cd /opt/opentsdb/;
sudo sh build.sh;




echo "setup lxde super key to open menu"
cd  ~/.config/openbox
rm -f lxde-rc.xml
wget https://raw.githubusercontent.com/synle/virtualbox_ubuntu_dev/master/lxde-rc.xml


#development and ide.;
cd ~/Down*;
echo "download & install dropbox";
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.2_amd64.deb;
sudo dpkg -i dropbox*;

echo "download & install atom";
wget https://github.com/atom/atom/releases/download/v0.156.0/atom-amd64.deb
sudo dpkg -i atom*;


echo "download and install opera";
wget http://operasoftware.pc.cdn.bitgravity.com/pub/opera/desktop/26.0.1656.60/linux/opera-stable_26.0.1656.60_amd64.deb;
sudo dpkg -i opera*;


echo "remove the deb from dropbox and atom";
rm -f *.deb;


#echo "install chrome";
#sudo apt-get install google-chrome-stable;
#sudo apt-get install -f -y;


echo "install nodejs depdencies";
sudo npm install -g yo karma-cli bower mocha grunt-cli forever gulp nodemon;

#sublime plugins
echo "install sublime packages"
cd ~/.config/sublime-text-2/Packages
wget https://sublime.wbond.net/Package%20Control.sublime-package
#Javascript Beautify
#Doc​Blockr
#All Autocomplete
#Emmet
#Tag
#Pretty JSON


#atom plugins;
echo "Download atom dependencies";
apm install minimap;
apm install autocomplete-plus;
apm install atom-beautify;
apm install emmet;
apm install sublime-tabs;
apm install docblockr;
apm install file-icons;
apm install file-icon-supplement;
apm install Linter;
apm install linter-jshint;
apm install linter-csslint;
apm install linter-less;
apm install fixmyjs;
apm install autoprefixer;
apm install compare-files;
apm install atom-alignment;

#stuff;
cat ~/.ssh/id_rsa;


echo "====";
echo "java_home";
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64";

#super to open menu
#http://forum.lxde.org/viewtopic.php?t=31610&f=8


#restart
sudo reboot
