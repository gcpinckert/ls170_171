#! /usr/bin/bash

# nested if statement

int=4

if [[ $int -lt 10 ]]
then
  echo $int is less than 10

  if [[ $int -lt 5 ]]
  then
    echo $int is also less than 5
  fi
fi

# two conditional branches with if and else

int=15

if [[ $int -lt 10 ]]
then
  echo $int is less than 10
else
  echo $int is not less than 10
fi

# three conditional branches with if, elif, and else

int=15

if [[ $int -lt 10 ]]
then
  echo $int is less than 10
elif [[ $int -gt 20 ]]
then
  echo $int is greater than 20
else
  echo $int is between 10 and 20
fi

# matching two conditions using &&

int=15

if [[ $int -gt 10 ]] && [[ $int -lt 20 ]]
then
  echo $int is between 10 and 20
fi

# matching one of two conditions using ||

int=12

if ([ $int -lt 5 ] || [ $int -gt 20 ])
then
  echo $int is either less than 5 or greater than 10
fi

# negating conditions using !

int=8

if ! ([ $int -let 5] || [ $int -gt 10 ])
then
  echo $int is between 5 and 10
fi

