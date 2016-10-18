# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ubuntu/trusty32"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:9000" will access port 9000 on the guest machine.
   config.vm.network "forwarded_port", guest: 9000, host: 9000

   config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
     vb.memory = "2048"
   end
  
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.provision "shell", path: "install_packages.sh"
  config.vm.provision "shell", path: "setup_gtfs_editor.sh", privileged: false
   
  config.vm.provision "shell", path: "run_gtfs_editor.sh", run: "always", privileged: false

end
