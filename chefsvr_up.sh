#!/bin/sh
echo on
echo "Downloading chef server install script"
curl -O "https://www.opscode.com/chef/install.sh"
chmod +x ./install.sh
sudo ./install.sh
echo "Done setup chef server.. Reconfigure and do Bootstrap test"
sudo chef-server-ctl reconfigure
sudo chef-server-ctl test
