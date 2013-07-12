# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.graceful_halt_retry_count = 5
  config.vm.graceful_halt_retry_interval = 3
  config.vm.hostname = "dev-app-erlang.spark.net"
  config.vm.synced_folder "app_log", "app_data"

  config.vm.define :baseCentos64 do |bare_config|
    bare_config.vm.graceful_halt_retry_count = config.vm.graceful_halt_retry_count
    bare_config.vm.graceful_halt_retry_interval = config.vm.graceful_halt_retry_interval
    bare_config.vm.hostname = config.vm.hostname 

    bare_config.vm.box = "CentOS6.4-x64"
    bare_config.vm.box_url = 
    bare_config.vm.network :public_network

    bare_config.vm.provider: aws do |aws|
      aws.tags ={"Name  => "vagrant"}
      aws.access_key_id = "YOUR AWS KEY ID"
      aws.secret_access_key = "YOUR AWS SECRET KEY"
      aws.keypair_name = "YOUR KEYPAIR NAME"
      aws.ssh_private_key_path = "PATH TO YOUR PRIVATE KEY"
    #  aws.region = "YOUR AWS REGION"
      aws.region = "us-west-1"
      aws.instance_type = "t1.micro"
      aws.ami = "ami-7747d01e"
      aws.ssh_username = "spark_user"
    end
    bare_config.vm.define :vm1
    bare_config.vm.define :vm2
  #  bare_config.vm.define :vm3
  #  bare_config.vm.define :vm4
    bare_config.vm.synced_folder = config.vm.synced_folder

    bare_config.vm.provision: shell,
      :inline => "yum update" 
  end

  config.vm.define :erlangR15B3 do |erl_config|
      erl_config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/20130709/raring-server-cloudimg-amd64-vagrant-disk1.box"
      erl_config.vm.graceful_halt_retry_count = config.vm.graceful_halt_retry_count
      erl_config.vm.graceful_halt_retry_interval = config.vm.graceful_halt_retry_interval
      erl_config.vbguest.auto_update = false
      erl_config.vbguest.no_remote = false
      erl_config.vm.network :public_network

      erl_config.vm.virtualbox: vb do |vb|
        vb.gui = false
        vb.name = "dev_app_erlang" 
        vb.customize ["modifyvm", :id,
        "--memory", "4000",
        "--audio", "none",
        "--vram","100",
        "--cpus","8",
        "--bridgeadapter1","Intel(R) 82579LM Gigabit Network Connection",
        "--bridgeadapter2","Intel(R) 82579LM Gigabit Network Connection",
        "--accelerate3d","on",
        "--accelerate2dvideo","on",
        "--clipboard", "bidirectional",
        "--usb", "off",
        "--usbehci", "off",
        "--teleporter", "off"
        ]

        vb.customize ["createhd",
        "--filename","dev_vm_erlang",
        "--size", "250000",
        "--variant", "Standard"
        ]        
      end
    erl_config.vm.synced_folder = config.vm.synced_folder
    erl_config.vm.provision: shell,
      :inline => "yum update" 
  end
end
