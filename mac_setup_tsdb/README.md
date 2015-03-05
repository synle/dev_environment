Download HBase Here:
http://www.apache.org/dyn/closer.cgi/hbase/


hbase-env.sh - java home
```
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
```

hbase-site.env
```
	<property>
	        <name>hbase.rootdir</name>
	        <value>/opt/hbase/data</value>
        </property>
        <property>
	        <name>hbase.zookeeper.property.dataDir</name>
	        <value>/opt/hbase/zookepper</value>
        </property>
```


to start
```
cd /opt/hbase/bin
./start-hbase.sh 
```
