#! /usr/bin/bash

# functions are defined by the name of the function, a set of () and a set of {}
# code inside the {} gets executed when the function is called

# functions refer to passed arguments according to their position
# the first argument will be assigned to `$1`, the second to `$2` and so on.

# call functions with any arguments following them, arguments are not separated by commas

greeting () {
  echo Hello $1
}

greeting_2 () {
  echo "Hello $1"
  echo "Hello $2"
}

greeting 'Peter'
greeting_2 'Peter' 'Paul'

