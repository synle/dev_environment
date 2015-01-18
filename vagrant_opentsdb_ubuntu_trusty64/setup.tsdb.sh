#!/bin/bash

#get dependencies
echo "Getting dependencies"
apt-get update
apt-get install -y curl build-essential git-core python python-dev supervisor automake gnuplot unzip vim git
apt-get install -y --fix-missing openjdk-6-jdk

echo "Downloading OpenTSDB..."
cd /opt
cp /vagrant_shared/zips/* ./
tar -xvf hbase*.tar.gz
tar -xvf opentsdb*.tar.gz
tar -xvf tcollector*.tar.gz
rm -r *.tar.gz



echo "Moving OpenTSDB and HBase to /opt"
mv hbase*/ hbase
mv opentsdb*/ opentsdb
mv tcollector*/ tcollector

echo "Copy new script"
cp /vagrant_shared/hbase-site.xml /opt/hbase/conf/
cp /vagrant_shared/hbase-env.sh /opt/hbase/conf/
cp /vagrant_shared/opentsdb.conf /opt/opentsdb/src/
cp /vagrant_shared/startstop /opt/tcollector

echo "Setting Up HBase"
mkdir /opt/hbase/data
mkdir /opt/hbase/zookeeper

echo "Build OpenTSDB"
cd /opt/opentsdb
sh build.sh

echo "Start HBase"
/opt/hbase/bin/start-hbase.sh

echo "Create Table for OpenTSDB"
env COMPRESSION=NONE HBASE_HOME=/opt/hbase/ /opt/opentsdb/src/create_table.sh

echo "Start TCollector"
/opt/tcollector/startstop start

echo "Start OpenTSDB"
nohup /opt/opentsdb/build/tsdb tsd --config=/opt/opentsdb/src/opentsdb.conf &
