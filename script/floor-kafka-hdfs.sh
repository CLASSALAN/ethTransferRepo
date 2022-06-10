#! /bin/bash

case $1 in
"start"){

                echo " --------Start Flume-------" 
                nohup flume-ng agent --conf-file /opt/script/flume/conf/floor-kafka-hdfs.conf --name os1 -Dflume.root.logger=INFO,LOGFILE > /opt/script/flume/log/floor-kafka-hdfs-log.txt   2>&1 &
};;
"stop"){

                echo " --------Stop Flume-------" 
                ps -ef | grep floor-kafka-hdfs.conf | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac

