#!/bin/bash

# Preparing API-Ping runner Utilities
# @author skitsanos
# @version 1.0.0
#
# Note: Running all the OS operations from this script makes Docker image much smaller
# compare to placing it all into RUN statements

apt-get update && apt-get install -y curl unzip libxml2 libcurl4-openssl-dev

curl https://github.com/Orange-OpenSource/hurl/releases/latest/download/hurl-1.6.1-x86_64-linux.tar.gz -L -o hurl-1.6.1-x86_64-linux.tar.gz
tar -xvzf hurl-1.6.1-x86_64-linux.tar.gz

cp hurl-1.6.1/hurl /usr/bin
chmod +x /usr/bin/hurl

curl https://github.com/servicex-sh/httpx/releases/latest/download/httpx-linux-x86_64.zip -L -o httpx-linux-x86_64.zip && unzip httpx-linux-x86_64.zip
cp ./httpx /usr/bin/
chmod +x /usr/bin/httpx

# cleanup
rm ./prepare.sh