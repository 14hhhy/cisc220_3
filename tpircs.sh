# Horace Yip 10184901
#!/bin/bash

read -p "Insert a list of words: " -a words
sdrow=();
for (( i=0; i<${#words[*]}; i++ )); do
word=${words[i]};
drow="";
for (( j=${#word}-1; j>=0; j-- )); do
drow="$drow${word:$j:1}";
done
sdrow+=($drow);
done

echo "Output:" ${sdrow[*]}
