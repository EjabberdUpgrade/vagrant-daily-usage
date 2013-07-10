#!/bin/sh
curl -L "https://www.opscode.com/chef/install.sh" | sudo bash
sudo chef-server-ctl reconfigure
sudo chef-server-ctl test
