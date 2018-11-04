#!/bin/sh


i=1

while [ $i -lt 1000 ]
do

./final_output_binary small.pcm

i=$(($i+1))

done
