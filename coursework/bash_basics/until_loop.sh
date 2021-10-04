#! /usr/bin/bash

# until loops work like while loops with do ... done

counter=0
max=10

until [ $counter -gt $max ]
do
  echo $counter
  ((counter++))
done

