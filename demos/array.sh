#!/bin/bash
# define one array
array1=(1 3 4)
# get first element
echo ${array1[0]}
# get all elements
echo ${array1[*]}
# get length
echo ${#array1[*]}