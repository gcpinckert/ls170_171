#! /usr/bin/bash

# while loops are defined by do ... done keywords

counter=0
max=10

while [ $counter -le $max ]
do
  echo $counter
  ((counter++))  # uses var++ notation to increment counter
done
