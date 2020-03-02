#!/bin/bash

#echo "hello world"

HELLO="Hello HP"
echo $HELLO

a=1
b=2
echo $a,$b

myfiles=$(ls ~/|wc -l)
echo $myfiles

#user input
echo "Enter first number"
read firstnumber
echo "Enter 2nd number"
read secondnumber

#conditions
if [ $firstnumber -gt $secondnumber ]
    then
        echo $firstnumber
        echo "is the greater number"

fi

#for loop
aligner="xiao hui Liu"
for item in $aligner
    do
    echo $item
    done

#for loop range
for number in {1..10..1}
    do
    echo $number
    done

# function
function ctof
    {
    ft=$(($1*(9/5)+32))
    echo $ft
    }
#call function
ctof 37

