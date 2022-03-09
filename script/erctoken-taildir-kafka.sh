#! /bin/bash

case $1 in
"start"){
                echo " --------Start flume-------" 
                nohup /opt/software/flume-1.9.0/bin/flume-ng agent --conf /opt/software/flume-1.9.0/conf --conf-file /opt/software/flume-1.9.0/conf/erctoken-taildir-kafka.conf --name a3 -Dflume.root.logger=INFO,LOGFILE > /opt/software/flume-1.9.0/log/erctoken-taildir-kafka.log  2>&1 &
};;
"stop"){

                echo " --------Stop flume-------" 
                ps -ef | grep erctoken-taildir-kafka.conf | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac
