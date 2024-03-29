#!/bin/bash
hostname=$1

script_home="/home/holiday/holiday-festive"

cd $script_home

if [[ -z "$1" ]]
then
  echo "hostname is empty - defaulting localhost - assuming running localy on holiday"
  hostname="localhost"
fi

echo "hostname is $hostname"
#
#
# Do things rather quickly if we can
# Better to keep things to 10 hz if possible, just because
#
#To run this file in the command line write ./festive.sh IpOrHostnameOfHolidayGoesHere
#example: ./festive.sh 192.168.0.3
#
#set delay minimum and multiplier
mindelay=0.05
delaymultiplier=2

while (( 1 ))
do
##do date smarts
XMAS=$(date -d "Dec 25" +%j)
TODAY=$(date +%j)
DAYS=$(($XMAS - $TODAY))
case $DAYS in
  0) delay=$mindelay;;
  1) delay=$(echo | awk -v mindelay="$mindelay" ' { printf "%0.5f\n", ( $mindelay * 1.5 ); } ');;
 [0-9]*) delay=$(echo | awk -v mindelay="$mindelay" -v DAYS="$DAYS" -v delaymultiplier="$delaymultiplier"  ' { printf "%0.5f\n", ( mindelay * DAYS * delaymultiplier ); } ');;
  -[0-9]*) delay=$(echo | awk -v mindelay="$mindelay" -v DAYS="$DAYS" -v delaymultiplier="$delaymultiplier"  ' { printf "%0.5f\n", ( mindelay * DAYS * delaymultiplier * 2 * -1 ); } ');;
esac
#awk example
#echo | awk ' { printf "%0.3f\n", (1 / 2); } '
#debug
#echo "minimum delay is $mindelay"
echo "current delay is $delay"
#echo "XMAS is $XMAS"
#echo "TODAY IS $TODAY"
echo "there are $DAYS days left to christmas"
curl -X PUT -d @festive1.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep $delay
curl -X PUT -d @festive2.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep $delay
curl -X PUT -d @festive3.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep $delay
done
