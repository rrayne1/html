#!/bin/bash
cd /var/www/html
if ! [ -d .git ] ; then
sudo rm -rf ../html
sudo git clone https://github.com/rrayne1/html.git html
else
sudo git pull origin master
fi
