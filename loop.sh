#!/bin/bash

<< forLoop
for ((i = $2; i < $3; i++))
do	
 mkdir "$1$i"
done

forLoop

i=1
while [ $i -lt 10 ]
do 
    echo $i
    i=$((i + 1))
done

