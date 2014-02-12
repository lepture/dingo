# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_NAME = ENV["BOX_NAME"] || "ubuntu"
BOX_URI = ENV["BOX_URI"] || "https://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"
DINGO_DOMAIN = ENV["DINGO_DOMAIN"] || "dingoapp.me"
DINGO_IP = ENV["DINGO_IP"] || "10.0.0.2"

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = BOX_NAME
  config.vm.box_url = BOX_URI
  config.vm.hostname = "#{DINGO_DOMAIN}"
  config.vm.network :forwarded_port, guest: 80, host: 8090
  config.vm.network :private_network, ip: DINGO_IP

  config.vm.synced_folder ".", "/root/dingo"

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
