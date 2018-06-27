#!/bin/bash
a=1
b=1
c=23
# if
if [ ${a} == ${b} ] 
then
  echo "a equals b"
fi

#if else
if [ $a == $c ]
then 
  echo "a equals c"
else
  echo "a not equals c"
fi

#if elseif else
if [ ${a} == ${c} ]
then
  echo "a equals c"
elif [ ${b} == ${c} ]
then 
  echo "b equals c"
else 
 echo "c not equals a and b"
fi