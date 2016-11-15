# Horace Yip 10184901
#!/bin/bash

read -p "Enter your password, hit return to end: " -s psswrd
strength=0;

if (( ${#psswrd} > 7 )); then
strength=$(($strength + 1));
fi

for (( i=0; i<${#psswrd}; i++ )); do
if [[ ${psswrd:$i:1} =~ ^-?[0-9]+$ ]]; then
strength=$(($strength + 1));
break
fi
done

if [[ $psswrd == *[@#\$%\&*+\-=]* ]]; then
strength=$(($strength + 1));
fi

if [[ $strength == 1 ]]; then
echo "Weak";
elif [[ $strength == 2 ]]; then
echo "Moderate";
elif [[ $strength == 3 ]]; then
echo "Strong";
fi
