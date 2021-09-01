nohup python hyperfestive.py 192.168.1.205 > /dev/null 2>&1 & 
echo $! > pid_hyperfestive_1.txt
nohup python hyperfestive.py 192.168.1.204 > /dev/null 2>&1 & 
echo $! > pid_hyperfestive_2.txt
