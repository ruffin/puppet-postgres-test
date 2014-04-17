# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "ubuntu/trusty64"

    config.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
            (puppet module list | grep puppetlabs-postgresql) || puppet module install puppetlabs/postgresql;"
    end
  
    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "manifests"
        puppet.manifest_file  = "site.pp"
    end
    
end