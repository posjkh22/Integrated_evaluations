#!/bin/sh


i=1

while [ $i -lt 10 ]
do

./final_output_binary small.pcm

i=$(($i+1))

done
