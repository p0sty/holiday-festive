#!/bin/bash
#
#colours=("#ff4133" "#ffb433" "#f5fc32" "#2bd64b" "#2b62d6")
#colour[0]="#ff4133"
#colour[1]="#ffb433"
#colour[2]="#f5fc32"
#colour[3]="#2bd64b"
#colour[4]="#2b62d6"

./colour.sh
./random1.sh
./random2.sh
./random3.sh
./random4.sh
./random5.sh
./random6.sh
./random7.sh
./random8.sh
./random9.sh
./random10.sh


file[0]="random1.json"
file[1]="random2.json"
file[2]="random3.json"
file[3]="random4.json"
file[4]="random5.json"
file[5]="random6.json"
file[6]="random7.json"
file[7]="random8.json"
file[8]="random9.json"
file[9]="random10.json"

#light1=${colour[$(shuf -i0-4 -n1)]}
#
while (( 1 ))
do 
curl -X PUT -d @${file[$(shuf -i0-9 -n1)]} http://127.0.0.1/iotas/0.1/device/moorescloud.holiday/localhost/setlights
sleep 0.1
done
#curl -X PUT -d @${file[$(shuf -i0-9 -n1)]} http://127.0.0.1/iotas/0.1/device/moorescloud.holiday/localhost/setlights
#sleep 0.1
#curl -X PUT -d @${file[$(shuf -i0-9 -n1)]} http://127.0.0.1/iotas/0.1/device/moorescloud.holiday/localhost/setlights
#sleep 0.1
#done


#echo /n
#echo $jsonline
#echo "the color is " $light1
#echo $randjson
