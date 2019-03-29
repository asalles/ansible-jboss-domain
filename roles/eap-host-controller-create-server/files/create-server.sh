#/bin/bash
#set -x

#SLEEP=$(( ( RANDOM % 25 )  +  ( RANDOM % 25 ) + ( RANDOM % 25 )  ))
#logger $2=$SLEEP
logger "JBOSS ANSIBLE: create-server.sh $1 $2 $3 $4 $5"
#sleep  $SLEEP

$1/bin/jboss-cli.sh --controller=$3:9999 -c  --command="/host=$2/server-config=$2:add(group=$4,auto-start=true,socket-binding-port-offset=$5)"
