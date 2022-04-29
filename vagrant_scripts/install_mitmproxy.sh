#!/usr/bin/env bash

curl https://snapshots.mitmproxy.org/8.0.0/mitmproxy-8.0.0-linux.tar.gz -o mitmproxy-8.0.0-linux.tar.gz.tar.gz
tar -xvzf mitmproxy-8.0.0-linux.tar.gz.tar.gz -C /usr/local/bin/