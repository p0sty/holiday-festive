echo "NOTE: this takes about a minute to start animating."
nohup ./randommaster.sh > /dev/null 2>&1 & 
echo $! > pid_random.txt
