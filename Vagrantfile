# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network :private_network, ip: "192.168.66.2"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end


  # Allow Vagrant to forward your ~/.ssh credentials to the instance
  # This allows us to use Git to clone private repositories
  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/home/ubuntu/work"

  config.vm.provision :shell, :path => "provision.sh"

end