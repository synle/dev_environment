echo "start hbase"
sudo /opt/hbase/bin/start-hbase.sh;
echo "start tcollector"
sudo /opt/tcollector/startstop start;
echo "waiting for habse to be up"
sleep 15;
echo "start opentsdb"
sudo /opt/opentsdb/build/tsdb tsd --config=/opt/opentsdb/src/opentsdb.conf;
