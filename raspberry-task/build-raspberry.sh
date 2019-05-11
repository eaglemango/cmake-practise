#!/bin/bash

git clone https://github.com/akhtyamovpavel/PatternsCollection.git

cp ./PatternsCollection/Decorator/cpp-source/configs/config.ini.example ./PatternsCollection/Decorator/cpp-source/configs/config.ini

sudo apt-get install libgsasl7-dev
sudo apt-get install gnutls-dev
sudo apt-get install doxygen

git clone https://github.com/raspberrypi/tools.git

cd ./PatternsCollection

cmake -DSYSROOT=../tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin -DON_PI=ON  .

make

cd ..

./raspberry/run-raspberry.sh

