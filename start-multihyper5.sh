nohup python hyper5.py 192.168.1.205 > /dev/null 2>&1 & 
echo $! > pid_hyper5_1.txt
nohup python hyper5.py 192.168.1.204 > /dev/null 2>&1 & 
echo $! > pid_hyper5_2.txt
