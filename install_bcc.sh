#!/bin/bash
# Our custom function
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4052245BD4284CDD
#echo "deb https://repo.iovisor.org/apt/$(lsb_release -cs) $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/iovisor.list
#sudo apt-get update
#sudo apt-get install bcc-tools libbcc-examples linux-headers-$(uname -r)

sudo apt-get -y install bison build-essential cmake flex git libedit-dev libllvm6.0 llvm-6.0-dev libclang-6.0-dev python zlib1g-dev libelf-dev
sudo apt-get -y install luajit luajit-5.1-dev
git clone https://github.com/iovisor/bcc.git
mkdir bcc/build; cd bcc/build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
make
sudo make install