#!/bin/bash

apt update
apt install wget
wget "http://192.168.0.120:9000/public/kaologo.png" -O /var/www/html/images/kao-logo.png
wget "http://192.168.0.120:9000/public/favicon.ico" -O /var/www/html/images/favicon.ico

