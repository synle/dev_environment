hbase-env.sh - java home
```
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
```

hbase-site.env
```
	<property>
        <name>hbase.rootdir</name>
        <value>/opt/hbase-0.98.9-hadoop2/data</value>
        </property>
        <property>
        <name>hbase.zookeeper.property.dataDir</name>
        <value>/opt/hbase-0.98.9-hadoop2/zookepper</value>
        </property>
```



