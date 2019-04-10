#!/bin/bash

echo keygen |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
sudo keygen_time.sh |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv

echo Encryption with OR | awk '{print $3}' >> Benchmark_Bethencourt_cpabe.csv
sudo enc_time_or.sh | awk '{print $3}' >> Benchmark_Bethencourt_cpabe.csv

echo Decryption |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
sudo dec_time.sh |  pr -1 -t -s >> Benchmark_Bethencourt_cpabe.csv
