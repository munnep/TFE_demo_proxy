#!/usr/bin/env bash

# get the certificate for the proxy server 
curl -v --proxy http://192.168.56.34:8080 -o /var/tmp/proxy.pem http://mitm.it/cert/pem
cp /var/tmp/proxy.pem /usr/local/share/ca-certificates/proxy.crt
update-ca-certificates

# cp the settingsfile to local system
cp /vagrant/config/tfe_settings.json /var/tmp/tfe_settings.json

chmod 600 /var/tmp/tfe_settings.json