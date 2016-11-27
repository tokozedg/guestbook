# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.30.30"

  # As we don't have docker registry, build image for demo localy with vagrant
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t  hub.askcharlie.de/guestbook"
  end

  # Install puppet agent and modules required
  config.vm.provision :shell, :path => "bootstrap.sh"

  # Provision machine and run desired docker containers
  config.vm.provision "puppet"

  # Post boostrap such as db migration
  config.vm.provision :shell, :path => "postbootstrap.sh"

end
