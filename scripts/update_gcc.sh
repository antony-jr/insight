#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install software-properties-common -y 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
sudo apt-get install gcc-snapshot -y
sudo apt-get update 
sudo apt-get install gcc-6 g++-6 -y 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6
