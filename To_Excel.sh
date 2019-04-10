#!/bin/bash

echo keygen | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv
sudo keygen_time.sh | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv

echo Encryption with OR | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv
sudo enc_time_or.sh | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv

echo Decryption | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv
sudo dec_time.sh | paste -d '\n' >> Benchmark_Bethencourt_cpabe.csv
