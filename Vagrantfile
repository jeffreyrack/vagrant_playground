# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

   # Use ansible_local so that ansible doesn't have to be installed on the local system.
   config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "ansible/playbook.yml"
      ansible.galaxy_role_file = 'ansible/requirements.yml'
  end
end
