#! /bin/bash

case $1 in
"start"){
                echo " --------Start flume-------" 
                nohup /opt/software/flume-1.9.0/bin/flume-ng agent --conf /opt/software/flume-1.9.0/conf --conf-file /opt/software/flume-1.9.0/conf/ethblock-taildir-kafka.conf --name a1 -Dflume.root.logger=INFO,LOGFILE > /opt/software/flume-1.9.0/log/ethblock-taildir-kafka.log  2>&1 &
};;
"stop"){

                echo " --------Stop flume-------" 
                ps -ef | grep ethblock-taildir-kafka | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac
