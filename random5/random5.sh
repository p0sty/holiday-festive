#!/bin/bash
#
#colours=("#ff4133" "#ffb433" "#f5fc32" "#2bd64b" "#2b62d6")
#colour[0]="#ff4133"
#colour[1]="#ffb433"
#colour[2]="#f5fc32"
#colour[3]="#2bd64b"
#colour[4]="#2b62d6"
#./colour.sh
colour[0]=$(cat ./colour1.txt)
colour[1]=$(cat ./colour2.txt)
colour[2]=$(cat ./colour3.txt)
colour[3]=$(cat ./colour4.txt)
colour[4]=$(cat ./colour5.txt)

light1=${colour[$(shuf -i0-4 -n1)]}
light2=${colour[$(shuf -i0-4 -n1)]}
light3=${colour[$(shuf -i0-4 -n1)]}
light4=${colour[$(shuf -i0-4 -n1)]}
light5=${colour[$(shuf -i0-4 -n1)]}
light6=${colour[$(shuf -i0-4 -n1)]}
light7=${colour[$(shuf -i0-4 -n1)]}
light8=${colour[$(shuf -i0-4 -n1)]}
light9=${colour[$(shuf -i0-4 -n1)]}
light10=${colour[$(shuf -i0-4 -n1)]}
light11=${colour[$(shuf -i0-4 -n1)]}
light12=${colour[$(shuf -i0-4 -n1)]}
light13=${colour[$(shuf -i0-4 -n1)]}
light14=${colour[$(shuf -i0-4 -n1)]}
light15=${colour[$(shuf -i0-4 -n1)]}
light16=${colour[$(shuf -i0-4 -n1)]}
light17=${colour[$(shuf -i0-4 -n1)]}
light18=${colour[$(shuf -i0-4 -n1)]}
light19=${colour[$(shuf -i0-4 -n1)]}
light20=${colour[$(shuf -i0-4 -n1)]}
light21=${colour[$(shuf -i0-4 -n1)]}
light22=${colour[$(shuf -i0-4 -n1)]}
light23=${colour[$(shuf -i0-4 -n1)]}
light24=${colour[$(shuf -i0-4 -n1)]}
light25=${colour[$(shuf -i0-4 -n1)]}
light26=${colour[$(shuf -i0-4 -n1)]}
light27=${colour[$(shuf -i0-4 -n1)]}
light28=${colour[$(shuf -i0-4 -n1)]}
light29=${colour[$(shuf -i0-4 -n1)]}
light30=${colour[$(shuf -i0-4 -n1)]}
light31=${colour[$(shuf -i0-4 -n1)]}
light32=${colour[$(shuf -i0-4 -n1)]}
light33=${colour[$(shuf -i0-4 -n1)]}
light34=${colour[$(shuf -i0-4 -n1)]}
light35=${colour[$(shuf -i0-4 -n1)]}
light36=${colour[$(shuf -i0-4 -n1)]}
light37=${colour[$(shuf -i0-4 -n1)]}
light38=${colour[$(shuf -i0-4 -n1)]}
light39=${colour[$(shuf -i0-4 -n1)]}
light40=${colour[$(shuf -i0-4 -n1)]}
light41=${colour[$(shuf -i0-4 -n1)]}
light42=${colour[$(shuf -i0-4 -n1)]}
light43=${colour[$(shuf -i0-4 -n1)]}
light44=${colour[$(shuf -i0-4 -n1)]}
light45=${colour[$(shuf -i0-4 -n1)]}
light46=${colour[$(shuf -i0-4 -n1)]}
light47=${colour[$(shuf -i0-4 -n1)]}
light48=${colour[$(shuf -i0-4 -n1)]}
light49=${colour[$(shuf -i0-4 -n1)]}
light50=${colour[$(shuf -i0-4 -n1)]}

randjson='{ "lights": [ "'$light1'", "'$light2'", "'$light3'", "'$light4'", "'$light5'", "'$light6'", "'$light7'", "'$light8'", "'$light9'", "'$light10'", "'$light11'", "'$light12'", 
"'$light13'", "'$light14'", "'$light15'", "'$light16'", "'$light17'", "'$light18'", "'$light19'", "'$light20'", "'$light21'", "'$light22'", "'$light23'", "'$light24'", "'$light25'", 
"'$light26'", 
"'$light27'", "'$light28'", "'$light29'", "'$light30'", "'$light31'", "'$light32'", "'$light33'", "'$light34'", "'$light35'", "'$light36'", "'$light37'", "'$light38'", "'$light39'", 
"'$light40'",
"'$light41'", "'$light42'", "'$light43'", "'$light44'", "'$light45'", "'$light46'", "'$light47'", "'$light48'", "'$light49'", "'$light50'" ] }'

echo $randjson > random5.json
#
#while (( 1 ))
#do 
#curl -X PUT -d @jsontest.json http://127.0.0.1/iotas/0.1/device/moorescloud.holiday/localhost/setlights
#sleep 0.1
#curl -X PUT -d @festive3.json http://127.0.0.1/iotas/0.1/device/moorescloud.holiday/localhost/setlights
#sleep 0.1
#done
#echo /n
#echo $jsonline
#echo "the color is " $light1
#echo $randjson
echo "50% loaded"
