#! /bin/bash

case $1 in
"start"){

                echo " --------启动flume-------" 
                nohup flume-ng agent --conf-file /opt/script/flume/conf/floor-kafka-hdfs.conf --name os1 -Dflume.root.logger=INFO,LOGFILE > /opt/script/flume/log/floor-kafka-hdfs-log.txt   2>&1 &
};;
"stop"){

                echo " --------停止flume-------" 
                ps -ef | grep floor-kafka-hdfs.conf | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac

