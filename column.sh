#!/bin/bash

output_file=/tmp/results.xls

[ ! -f ${output_file} ] && echo -e "\n\n\n" > ${output_file}
keygen_count=$(echo keygen |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
sudo keygen_time.sh |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv)

enc_count=$(echo Encryption with OR |pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
sudo enc_time_or.sh | pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv)

dec_count=$(echo Decryption |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
sudo dec_time.sh |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv)

now=$(date +%y%m%d)

sudo sed -i "1 s/$/\t$now/" /tmp/out.txt
sudo sed -i "2 s/$/\t$keygen_count/" /tmp/out.txt
sudo sed -i "3 s/$/\t$enc_count/" /tmp/out.txt
sudo sed -i "3 s/$/\t$dec_count/" /tmp/out.txt
