# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.6.5"
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# check and install required Vagrant plugins
required_plugins = ["vagrant-hostmanager"]
required_plugins.each do |plugin|
	if Vagrant.has_plugin?(plugin) then
	    system "echo OK: #{plugin} already installed"
	else
	    system "echo Not installed required plugin: #{plugin} ..."
		system "vagrant plugin install #{plugin}"
	end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "nfq/wheezy"
  config.vm.box_version = "~> 1.1"
  config.vm.network :private_network, ip: "192.168.33.64"
  config.ssh.forward_agent = true

  config.vm.hostname = "ongr.dev"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.hostmanager.aliases = ["magento.ongr.dev", "oxid.ongr.dev"]

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["setextradata", :id, "--VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end

  config.vm.synced_folder "./", "/var/www", type: "nfs"
  config.vm.provision "shell", path: "vagrant/install.sh"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "./vagrant/manifests"
    puppet.facter = { "ssh_username" => "vagrant" }
    puppet.options = ["--verbose", "--debug", "--parser future"]
  end

  config.ssh.shell = "bash -l"
  config.ssh.keep_alive = true
  config.ssh.forward_agent = false
  config.ssh.forward_x11 = false
  config.vagrant.host = :detect
end
