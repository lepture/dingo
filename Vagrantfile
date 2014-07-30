# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_NAME = ENV["BOX_NAME"] || "ubuntu/trusty64"
DINGO_DOMAIN = ENV["DINGO_DOMAIN"] || "dingoapp.me"
DINGO_IP = ENV["DINGO_IP"] || "10.0.0.2"

$script = <<SCRIPT
echo "Use 163 mirros."
echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
SCRIPT

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = BOX_NAME
  config.vm.hostname = "#{DINGO_DOMAIN}"
  config.vm.network :forwarded_port, guest: 80, host: 8090
  config.vm.network :private_network, ip: DINGO_IP

  if ENV["CHINA"]
    config.vm.provision :shell, inline: $script
  end

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
