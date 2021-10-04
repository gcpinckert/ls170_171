#! /usr/bin/bash

# for loops iterate through a list
# the for expression declares a new variable, which is assigned to each subsequent value
# the commands between do and end are executed once for each element in the list

numbers='1 2 3 4 5 6 7 8 9 10'

for number in $numbers
do
  echo $number
done

