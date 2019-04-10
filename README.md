# Bethencourt_CPABE
1. We use the 30 copy of the same file for encryption and deception and it is named as file1.pdf, file2.pdf,…..,file30.pdf. 

2. The script for Keygen is written in the file “keygen_time.sh”. We generate key for 30 users namely raj1_priv_key to raj30_priv_key. You can read more about key generation at the link: http://acsc.cs.utexas.edu/cpabe/cpabe-keygen.html

3. The script for encryption is written in the file “enc_time_or.sh” (using OR operation between the attribute) and enc_time_and.sh (using AND operation between the attribute). We encrypt all the 30 files (namely file1.pdf, file2.pdf…..,file30.pdf) and it produce the corresponding 30 files (namely file1.pdf.cpabe etc. ). You can read more about encryption at the link: http://acsc.cs.utexas.edu/cpabe/cpabe-enc.html

4. The script for decryption is written in the file “dec_time.sh”. It decrypt all the 30 files in plaintext form. You can read more about decryption at the link: http://acsc.cs.utexas.edu/cpabe/cpabe-dec.html

5. We write a final script “Benchmarking_script.sh” which call all above 3 script and create a csv file called “results.csv” for the keygen time, encryption time and decryption time. You can run this script using: “sudo ./ Benchmarking_script.sh” multiple time to get the data for multiple iterations. All the results will be saved in the cosecutive column of “results.csv” file. The results from “results.csv” file can then be used to calculate the average and then to show results in the graphical form.
