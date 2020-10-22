#!/bin/bash

set -e

git clone --branch release-1.1104 https://github.com/dagolden/IO-CaptureOutput.git
cd IO-CaptureOutput
perl Makefile.PL
make
sudo make install
cd ..
rm -rf IO-CaptureOutput

git clone https://github.com/t3t5u/ninka.git
cd ninka
#it reset --hard 81f185261c8863c5b84344ee31192870be939faf
perl Makefile.PL
make
sudo make install
cd ..
rm -rf ninka
