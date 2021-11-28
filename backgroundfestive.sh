#!/bin/bash
hostname=$1

if [[ -z "$1" ]]
then
  echo "string is empty"
  hostname="localhost"
fi

echo "hostname is $hostname"

#
# Do things rather quickly if we can
# Better to keep things to 10 hz if possible, just because
#
#To run this file in the command line write ./festive.sh IpOrHostnameOfHolidayGoesHere
#example: ./festive.sh 192.168.0.3
#
while (( 1 ))
do 
curl -X PUT -d @festive1.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep 0.1
curl -X PUT -d @festive2.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep 0.1
curl -X PUT -d @festive3.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep 0.1
done
