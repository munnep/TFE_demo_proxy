#!/usr/bin/env bash


# TFE installation directory
mkdir /mnt/tfe 

cp /vagrant/config/license.rli /var/tmp/license.rli
chmod 600 /var/tmp/license.rli

export http_proxy=http://192.168.56.34:8080
export https_proxy=http://192.168.56.34:8080
export HTTP_PROXY=http://192.168.56.34:8080
export HTTPS_PROXY=http://192.168.56.34:8080

curl -o /var/tmp/install.sh https://install.terraform.io/ptfe/stable

bash /var/tmp/install.sh http-proxy=http://192.168.56.34:8080 private-address=192.168.56.33 public-address=192.168.56.33

