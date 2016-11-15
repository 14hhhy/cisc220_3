# Horace Yip 10184901
#!/bin/bash

for (( i=1000; i<=10000; i++ )); do
sum1=0;
sum2=0;
for (( j=0; j<${#i}; j++ )); do
sum1=$(($sum1 + ${i:j:1}));
done
for (( k=0; k<${#sum1}; k++ )); do
sum2=$(($sum2 + ${sum1:k:1}));
done
if (( $sum2==7 )); then
echo $i;
fi
done
