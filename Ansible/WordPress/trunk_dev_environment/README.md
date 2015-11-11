# WordPress Trunk development environment 
In this directory you will find the necessary files to setup a WordPress development 
environment in a [Vagrant](http://vagrantup.com) virtual machine provisioned with [Ansible](http://docs.ansible.com) 
based on the WordPress trunk version. It uses the default Ubuntu 12.04 
Apache and PHP packages. This environment is *not tuned nor secured* in any way. 

This setup is *NOT FOR PRODUCTION USE*! 

### How to use 
1. Install [Vagrant](http://vagrantup.com) using the instructions on the Vagrant website
2. Install the Vagrant plugin [vagrant-hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)
3. Install the Vagrant plugin [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)
4. Install [Ansible](http://docs.ansible.com) using the Ansible documentation
5. Git clone this directory
6. Run the `vagrant up` command in the cloned directory

### Notes
- The vagrant-hostsupdater plugin makes sure your host machine's /etc/hosts file will be edited with the
in the Vagrantfile specified domain names: test.dev, wordpresstrunk.dev and wordpressmultitrunk.dev
This makes it very easy to access a WordPress single install and a WordPress Multisite installation
from a browser on your host machine. 
- The vagrant-vbguest plugin makes sure the right Virtualbox Guest additions are installed

