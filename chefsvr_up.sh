#!/bin/sh
echo on
echo "Downloading chef server install script"
curl -L "https://www.opscode.com/chef/install.sh" | sudo bash
echo "Done setup chef server.. Reconfigure and do Bootstrap test"
sudo chef-server-ctl reconfigure
sudo chef-server-ctl test
