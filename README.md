# Bethencourt_CPABE

This is a **C** based implementation of CIphertext-Policy Attribute Based Encryption Scheme.

### Pre-requisites

- Install the following:

  ```
  sudo apt-get install m4
  sudo apt-get install flex
  sudo apt-get install bison
  sudo apt-get install libssl-dev
  sudo apt-get install libgmp-dev
  sudo apt install libglib2.0-dev
  ```

  ```
  
  
  cd pbc-0.5.14/
  ls
  # configure with pbc flags
  ./configure --with-pbc-include=/home/lam/.local/include/pbc --with-pbc-lib=/home/lam/.local/lib
  sudo make
  sudo make install
  
  
  cd libbswabe-0.9/
  ls
  sudo ./configure -with-pbc-include=/usr/local/include/pbc -with-pbc-lib=/usr/local/lib
  sudo make LDFLAGS="-lgmp -lpbc -lcrypto -L/usr/lib/x86_64-linux-gnu -lglib-2.0 -lbswabe -lgmp"
  sudo make install
  
  ```



### Using the Library

1. For encryption, we need input files (we are using PDF files). Here, we are using multiple copies of the same file for encryption and decryption and it is named as *file1.pdf, file2.pdf, ... ,file30.pdf*. 
2. The script for Key-generation is written in the file __“keygen_time.sh”__. We generate key for 30 users namely *raj1_priv_key* to *raj30_priv_key*. More about key generation is available in the link: http://acsc.cs.utexas.edu/cpabe/cpabe-keygen.html
3. The script for encryption is written in the file __“enc_time_or.sh”__ (using **OR** operation between the attribute) and __"enc_time_and.sh"__ (using **AND** operation between the attribute). We encrypt all the 30 files (namely *file1.pdf, file2.pdf,..., file30.pdf*) and the result is the encrypted files of the corresponding input files (named *file1.pdf.cpabe* and so on). More about encryption is available in the link: http://acsc.cs.utexas.edu/cpabe/cpabe-enc.html
4. The script for decryption is written in the file __“dec_time.sh”__. It decrypts all the 30 files in to return the content back as the input plaintext. You can read more about decryption at the link: http://acsc.cs.utexas.edu/cpabe/cpabe-dec.html
5. To run Keygen, Encryption and Decryption st once, execute the script __“Benchmarking_script.sh”__ which outputs a csv file called “results.csv” with the time taken for keygen, encryption and decryption. You can run this script using: __*“sudo ./ Benchmarking_script.sh”*__ multiple times to get the data for multiple iterations. All the results will be saved in the consecutive column of **“results.csv”** file. 
