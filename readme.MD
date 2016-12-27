 A Vagrant environment for [Conveyal's](http://conveyal.com/) [GTFS Editor](https://github.com/conveyal/gtfs-editor)

# Why should I use this? 
The GTFS Editor works reasonably well, but has a quirk in that it relies on the 
non-current Java version 7, which will be not supported in the near future. Due to a history of [vulnerabilities](https://krebsonsecurity.com/2016/01/oracle-pushes-java-fix-patch-it-or-pitch-it/), running an unsupported Java version is not recommended. 

Vagrant offers a way to quickly and automatically set up a virtual machine environment to run this software only when necessesary.

This Vagrantfile:

* Provisions an Ubuntu 14.04 32 bit VM (the last LTS release with Java 7) with 2GB ram,
* Sets up a swapfile,
* Installs Java and unzip,
* Downloads the gtfs-editor,
* Installs Play Framework 1.2.6,
* Installs gtfs-editor's dependencies, and _finally_
* Runs the gtfs-editor such that it is accessible from your host computer at localhost:9000

Usage:

1. Install [vagrant](https://www.vagrantup.com/docs/getting-started/) and [Virtualbox](https://www.virtualbox.org/)
1. Clone this repository `git clone https://github.com/laidig/vagrant-gtfs-editor/`
2. Change into the  repository directory `cd vagrant-gtfs-editor`
3. Run `vagrant up`
4. Wait for box to be downloaded, box will then start and install dependencies
5. When done, you will have a gtfs-editor instance on http://localhost:9000

