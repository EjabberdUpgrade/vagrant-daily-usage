#!/bin/sh
echo on
echo "Downloading chef server install script"
curl -O "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb"

sudo apt-get install -y ./chef-server_11.0.8-1.ubuntu.12.04_amd64.deb
echo "Done setup chef server.. Reconfigure and do Bootstrap test"
sudo chef-server-ctl reconfigure
sudo chef-server-ctl test
