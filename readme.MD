 A Vagrant environment for Conveyal's GTFS Editor

This Vagrantfile:

* Provisions an Ubuntu 14.04 32 bit VM (the last LTS release with Java 7) with 2GB ram,
* Sets up a swapfile,
* Installs Java, git, and unzip as root,
* Clones the gtfs-editor repository,
* Installs Play Framework 1.2.X,
* Installs gtfs-editor's dependencies, and _finally_

* Runs the gtfs-editor such that it is accessible from your host computer at localhost:9000

