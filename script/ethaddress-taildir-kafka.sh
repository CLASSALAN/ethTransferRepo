#! /bin/bash

case $1 in
"start"){
                echo " --------Start flume-------" 
                nohup /opt/software/flume-1.9.0/bin/flume-ng agent --conf /opt/software/flume-1.9.0/conf --conf-file /opt/software/flume-1.9.0/conf/ethaddress-taildir-kafka.conf --name a2 -Dflume.root.logger=INFO,LOGFILE > /opt/software/flume-1.9.0/log/ethaddress-taildir-kafka.log  2>&1 &
};;
"stop"){

                echo " --------Stop flume-------" 
                ps -ef | grep ethaddress-taildir-kafka.conf | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac
