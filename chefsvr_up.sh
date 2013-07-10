#!/bin/sh
set -e # Exit script on first error.
set -x # Print commands and their arguments as they are executed.

curl -L "https://www.opscode.com/chef/install.sh" | sudo bash
sudo chef-server-ctl reconfigure
sudo chef-server-ctl test
