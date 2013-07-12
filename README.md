vagrant-daily-usage
===================
This demo relies on using git and linux environment.
In order to work on windoes, users need to install 
linux emulator/unix tools and git client.

For windows:
* Install github client for windows from 
  http://windows.github.com/ 
  This should take care of what needed for linux tools 
  and git client. 

* Open a git shell from the git windows client

* Then follow the instruction from vagrant.
  http://docs.vagrantup.com/v2

* Right now there is virtual box provider config settings

NB:
* The windows/unix line terminator causes problem when 
  provisioning the linux VM post boot, when work from Windows
  environment

* You need to replace the ssh public key on VM and on vagrant after creation for security reason.