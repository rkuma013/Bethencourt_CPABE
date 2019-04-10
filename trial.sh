#!/bin/bash

DP[0]="attribute1"
#printf "%s" "${DP[0]}"
cpabe-enc pub_key file1.pdf ${DP[0]}
#printf "\n"

k=1
for i in 2 3
do
  DP[k]=" or attribute$i"
  SP[k]="'${DP[@]}'"
  cpabe-enc pub_key file$i.pdf ${SP[k]}
  #printf "%s" "${SP[k]}"
  #printf "\n"
  k=$((k+1))
done


