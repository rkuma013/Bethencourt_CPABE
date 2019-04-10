#!/bin/bash

touch results.csv 
paste results.csv <(echo keygen |  pr -1 -t -s;
sudo keygen_time.sh |  pr -1 -t -s;

echo Encryption with OR | pr -1 -t -s ;
sudo enc_time_or.sh | pr -1 -t -s  ;

echo Decryption |  pr -1 -t -s ;
sudo dec_time.sh |  pr -1 -t -s ;) > /tmp/tempresults.csv; 
sudo mv /tmp/tempresults.csv results.csv
