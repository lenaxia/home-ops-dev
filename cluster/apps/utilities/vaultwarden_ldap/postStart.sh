#!/bin/bash

apt update
apt install wget
wget "https://s3.${SECRET_DEV_DOMAIN2}/public/customlogo.png" -O /var/www/html/images/custom-logo.png
wget "https://s3.${SECRET_DEV_DOMAIN2}/public/favicon.ico" -O /var/www/html/images/favicon.ico

