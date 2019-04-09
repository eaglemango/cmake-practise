#!/bin/bash

git clone https://github.com/akhtyamovpavel/PatternsCollection.git

cp ./PatternsCollection/Decorator/cpp-source/configs/config.ini.example ./PatternsCollection/Decorator/cpp-source/configs/config.ini

sudo apt-get install libgsasl7-dev
sudo apt-get install gnutls-dev
sudo apt-get install doxygen

cd ./PatternsCollection

cmake -DVMIME_SENDMAIL_PATH=/usr/sbin/sendmail .

make

cd ..

./pc/run-pc.sh

