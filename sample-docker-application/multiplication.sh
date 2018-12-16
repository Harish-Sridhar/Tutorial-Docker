#!/bin/bash
echo "We are going to $1 now"
echo "We will do ${iterations} iterations"

case  $1  in
  "multiply")
  echo "The multiplier is ${multiplier}"
  for ((i =1; i<=${iterations}; i++));
  do
    echo $i*$multiplier=$((i*${multiplier}))
  done
    ;;
    *)
    echo "Enter a valid operation please"
    exit 1
  esac
