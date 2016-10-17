#!/bin/bash

ans=0

read -p "Please insert a number: " ans

while true; do

read -p "Pease insert an operation: " opr

case $opr in
"+")
read -p "Please insert a number: " num
ans=$(($ans + $num))
echo "Result so far is: "$ans;;
"-")
read -p "Please insert a number: " num
ans=$(($ans - $num))
echo "Result so far is: "$ans;;
"*")
read -p "Please insert a number: " num
ans=$(($ans * $num))
echo "Result so far is: "$ans;;
"/")
read -p "Please insert a number: " num
ans=$(($ans / $num))
echo "Result so far is: "$ans;;
"q")
echo "Thanks for using my calculator"
exit 0;;
*)echo -n "Error! ";;
esac

done
