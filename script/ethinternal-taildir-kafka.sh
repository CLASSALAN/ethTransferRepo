#! /bin/bash

case $1 in
"start"){
                echo " --------Start Flume-------" 
                nohup /meta/software/flume-1.9.0/bin/flume-ng agent --conf /meta/software/flume-1.9.0/conf --conf-file /meta/software/flume-1.9.0/conf/ethinternal-taildir-kafka.conf --name itn1 -Dflume.root.logger=INFO,LOGFILE > /meta/software/flume-1.9.0/log/ethinternal-taildir-kafka.log  2>&1 &
};;
"stop"){

                echo " --------Stop Flume-------" 
                ps -ef | grep ethinternal-taildir-kafka | grep -v grep |awk '{print $2}' | xargs -n1 kill

};;
esac
