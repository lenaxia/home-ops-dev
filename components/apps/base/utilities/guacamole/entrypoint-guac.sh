#!/bin/bash
#apt update && apt upgrade
#apt install -y software-properties-common gnupg sudo wget
mkdir /config/extensions
wget https://dlcdn.apache.org/guacamole/1.4.0/binary/guacamole-auth-header-1.4.0.tar.gz /config/extensions/

bash -c 'echo "http-auth-header: Remote-User" >> /config/guacamole.properties'
