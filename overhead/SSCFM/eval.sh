#!/bin/sh



if [ $# eq 0 ]; then

./run.sh whetstone TH1
./run.sh whetstone TH2
./run.sh whetstone TH3
./run.sh whetstone TH4

./run.sh dhrystone TH1
./run.sh dhrystone TH2
./run.sh dhrystone TH3
./run.sh dhrystone TH4

./run.sh big_dhrystone TH1
./run.sh big_dhrystone TH2
./run.sh big_dhrystone TH3
./run.sh big_dhrystone TH4

./run.sh fft TH1
./run.sh fft TH2
./run.sh fft TH3
./run.sh fft TH4

./run.sh dijkstra TH1
./run.sh dijkstra TH2
./run.sh dijkstra TH3
./run.sh dijkstra TH4

./run.sh basicmath TH1
./run.sh basicmath TH2
./run.sh basicmath TH3
./run.sh basicmath TH4

./run.sh patricia TH2
./run.sh patricia TH3
./run.sh patricia TH4

./run.sh sha TH1
./run.sh sha TH2
./run.sh sha TH3
./run.sh sha TH4

./run.sh stringsearch TH1
./run.sh stringsearch TH2
./run.sh stringsearch TH3
./run.sh stringsearch TH4

./run.sh crc TH1
./run.sh crc TH2
./run.sh crc TH3
./run.sh crc TH4



elif [ $1="1" -a $2="1" ]; then
./run.sh whetstone TH1


elif [ $1="1" -a $2="2" ]; then
./run.sh whetstone TH2

elif [ $1="1" -a $2="3" ]; then
./run.sh whetstone TH3

elif [ $1="1" -a $2="4" ]; then
./run.sh whetstone TH4



elif [ $1="1" and $# eq 2 ]; then

./run.sh whetstone TH1
./run.sh whetstone TH2 
./run.sh whetstone TH3 
./run.sh whetstone TH4 



elif [ $1="2" ]; then

./run.sh dhrystone TH1
./run.sh dhrystone TH2
./run.sh dhrystone TH3
./run.sh dhrystone TH4

elif [ $1="3" ]; then

./run.sh big_dhrystone TH1
./run.sh big_dhrystone TH2
./run.sh big_dhrystone TH3
./run.sh big_dhrystone TH4

elif [ $1="4" ]; then

./run.sh fft TH1
./run.sh fft TH2
./run.sh fft TH3
./run.sh fft TH4

elif [ $1="5" ]; then

./run.sh dijkstra TH1
./run.sh dijkstra TH2
./run.sh dijkstra TH3
./run.sh dijkstra TH4

elif [ $1="6" ]; then

./run.sh patricia TH1
./run.sh patricia TH2
./run.sh patricia TH3
./run.sh patricia TH4

elif [ $1="7" ]; then

./run.sh sha TH1
./run.sh sha TH2
./run.sh sha TH3
./run.sh sha TH4

elif [ $1="8" ]; then

./run.sh basicmath TH1
./run.sh basicmath TH2
./run.sh basicmath TH3
./run.sh basicmath TH4

elif [ $1="9" ]; then

./run.sh stringsearch TH1
./run.sh stringsearch TH2
./run.sh stringsearch TH3
./run.sh stringsearch TH4

elif [ $1="10" ]; then

./run.sh crc TH1
./run.sh crc TH2
./run.sh crc TH3
./run.sh crc TH4


fi
