Steps to reproduce Salt Issue #5013
-----------------------------------

This repository contains a simple test case for Salt Issue [#5013](https://github.com/saltstack/salt/issues/5013). The Vagrantfile is configured to use the latest version of Salt from the 'develop' branch, but this can be modified as desired.

1. Install Vagrant
   * http://docs.vagrantup.com/v2/installation/index.html
2. Install the Salty Vagrant plugin
   * vagrant plugin install vagrant-salt
3. Get the Ubuntu 12.04 base box
   * vagrant box add precise64 http://files.vagrantup.com/precise64.box
4. Clone this test repository
   * git clone git@github.com:jlund/salt-5013
5. Start the VM from the cloned directory
   * vagrant up
6. Wait for the VM to boot and for Salt to bootstrap, then connect to the VM
   * vagrant ssh
7. Run Salt on the VM
   * sudo salt-call --local state.highstate

This is the result that I am getting right now:

    local:
    ----------
        State: - file
        Name:      /var/www/test
        Function:  recurse
            Result:    False
            Comment:   #### /var/www/test/testfile ####
    Source file salt://|test/testdir/testfile not found
            Changes:
