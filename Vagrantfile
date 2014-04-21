ENV['VAGRANT_DEFAULT_PROVIDER'] = 'lxc'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "wmysql"
  config.vm.box = "base"
  config.omnibus.chef_version = :latest
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true

  config.vm.provider :lxc do |lxc|
    # Same effect as 'customize ["modifyvm", :id, "--memory", "1024"]' for VirtualBox
    lxc.customize 'cgroup.memory.limit_in_bytes', '1024M'
  end


  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = ["roles"]
    chef.add_role "mysql_attr"
    chef.add_recipe 'apt' 
    chef.add_recipe 'mysql::server'
    chef.log_level = :debug

  end
end
