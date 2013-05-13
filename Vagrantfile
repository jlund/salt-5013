Vagrant.configure("2") do |config|
  config.vm.box = "precise64"

  config.vm.synced_folder "srv", "/srv"

  config.vm.provision :salt do |salt|

    salt.minion_config = "salt/minion"

    salt.install_type = "git"
    salt.install_args = "develop"

  end
end
