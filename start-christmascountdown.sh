## this starts the process for the festive animation to get quicker the closer it gets to christmas
## then it does a wind-down post christmas

script_home="/home/holiday/holiday-festive"

cd $script_home

bedtime="21:00"
#bedtime is in 24 hour format

#DIAG="YES"
#uncomment the above if you're having trouble for diagnostic info

if [[ -z "$1" ]]
then
  hostname="localhost"
fi



if [[ "$DIAG" == "YES" ]]
then
echo "bedtime set to $bedtime - animation will turn off then for the kids"
echo "timezone is set to: $(ls -l /etc/localtime)"
echo "system date/time is set to: $(date)"
fi

nohup ./backgroundchristmascountdown.sh $1 > /dev/null 2>&1 & 
prog_pid="$!"

if [[ "$DIAG" == "YES" ]]
then
echo "the process PID is $prog_pid"
fi

#NOTE: proper operation of this depends upon the CORRECT TIMEZONE being set on the holiday
# by default it is set to Sydney time 
# to change this you need to look at the corresponding directory in the timezone output above
# sudo rm /etc/localtime
# sudo ln -s /usr/share/zoneinfo/Australia/Adelaide 
# or whatever your local timezone is
# then check if it worked by typing date
#by default this is set to australia/sydney

until [[ "$time" == "$bedtime" ]]
do
    time=$(date +%H:%M)
    sleep 5s
done
kill $prog_pid

curl -X PUT -d @off.json http://${hostname}/iotas/0.1/device/moorescloud.holiday/localhost/setlights
