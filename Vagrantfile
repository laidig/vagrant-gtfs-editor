# -*- mode: ruby -*-
# vi: set ft=ruby :

required_plugins = %w(vagrant-triggers)

plugins_to_install = required_plugins.select { |plugin| not Vagrant.has_plugin? plugin }
if not plugins_to_install.empty?
  puts "installing: #{plugins_to_install.join(' ')}"
  if system "vagrant plugin install #{plugins_to_install.join(' ')}"
    exec "vagrant #{ARGV.join(' ')}"
  else
    abort "Installation of one or more plugins failed"
  end
end

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
  config.vm.provision "file", source: "./play.upstart.conf", destination: "/home/vagrant/play.upstart.conf"
  config.vm.provision "shell",
    inline: "sudo mv -f /home/vagrant/play.upstart.conf /etc/init/play.conf"
#  config.vm.provision "shell", path: "run_gtfs_editor.sh", run: "always", privileged: false

  config.trigger.after :up do
    run "open http://localhost:9000"
  end

end
