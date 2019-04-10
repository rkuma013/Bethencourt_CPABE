#!/bin/bash

cpabe-enc pub_key fc2.pdf 'attribute1'
cpabe-dec pub_key raj1_priv_key fc2.pdf.cpabe

cpabe-enc pub_key fc2.pdf 'attribute1 or attribute2'
cpabe-dec pub_key raj2_priv_key fc2.pdf.cpabe

cpabe-enc pub_key fc2.pdf 'attribute1 or attribute2 or attribute3'
cpabe-dec pub_key raj3_priv_key fc2.pdf.cpabe
sleep 5
cpabe-enc pub_key fc2.pdf 'attribute1 or attribute2 or attribute3 or attribute4'
cpabe-dec pub_key raj4_priv_key fc2.pdf.cpabe
sleep 5
cpabe-enc pub_key fc2.pdf 'attribute1 or attribute2 or attribute3 or attribute4 or attribute5'
cpabe-dec pub_key raj5_priv_key fc2.pdf.cpabe
sleep 5



