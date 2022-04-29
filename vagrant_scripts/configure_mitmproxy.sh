#!/usr/bin/env bash

# copy the configuration file for the service
cp /vagrant/config/mitmdump.service /lib/systemd/system/

# systemctl commands to pick the service up, enable and start it
systemctl daemon-reload
systemctl enable mitmdump.service
systemctl start mitmdump.service