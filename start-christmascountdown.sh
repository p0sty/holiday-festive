## this starts the process for the festive animation to get quicker the closer it gets to christmas
then it does a wind-down post christmas

nohup ./backgroundchristmascountdown.sh $1 > /dev/null 2>&1 & 
echo $! > pid_christmascountdown.txt
