# TFE_demo_proxy
This repository does an automated installation of TFE (Terraform Enterprise) latest version on an Ubuntu virtual machine. It will use a proxy server on another virtual machine to connect to the internet.

This repo uses Vagrant to creates 2 virtual machines.

Vagrant virtual machine proxy:
- Ubuntu virtual machine starts
- download and installation of mitmproxy software
- Configuration of the mitmproxy software

Vagrant virtual machine tfe:
- Ubuntu virtual machine starts
- TFE settings file are stored under ```/vagrant/config/tfe_settings.json```
- Replicated configuration file are stored under ```/etc/replicated.conf```
- APT will use the proxy software. Configuration used in ```/vagrant/config/apt-proxy.conf```
- TFE installation script will be downloaded and executed using the proxy server settings
- The first admin user will be created within TFE to use with settings created under ```/vagrant/config/create_tfe_user.json```

For a manual installation of TFE and upgrade follow [this documentation](manual/README.md) 

Diagram of the virtual machines and how TFE connects to the internet.  
![](diagram/tfe_proxy.png)


# Prerequisites

## Vagrant
Vagrant [See documentation](https://www.vagrantup.com/docs/installation)  
Virtualbox [See documentation](https://www.virtualbox.org/wiki/Downloads)

## License
- Make sure you have a TFE license available for use and store it under ```config/license.rli```

# How to
- Clone the repository to your local machine
```
git clone https://github.com/munnep/TFE_demo_proxy.git
```
- Go to the directory
```
cd TFE_demo_proxy
```
- save the license file as ```config/license.rli```
- Start the virtual machines with Vagrant (duration 10 minutes)
```
vagrant up
```
- You should see the following message when Vagrant has started the Virtual machines
```
    default: #######################################################
    default: #              TFE installation complete              #
    default: # TFE dashboard: https://192.168.56.33.nip.io:8800    #
    default: # TFE Application: https://192.168.56.33.nip.io       #
    default: #######################################################
```
- login to the replicated console page
[https://192.168.56.33.nip.io:8800](https://192.168.56.33.nip.io:8800)
- Unlock the console with the password ```Password#1```
- You should see that everything is started and you can use TFE
- Click on the open link which should point you to the TFE application [https://192.168.56.33.nip.io](https://192.168.56.33.nip.io)  
- login using the created account
```
user: admin
password: Password#1
```
- Stop the vagrant machines
```
vagrant halt
```
- When you are completely done you can remove it
```
vagrant destroy
```


# Done  
- [x] Vagrant proxy and tfe machine
- [x] proxy: Install mitmproxy
- [x] proxy: configure mitmproxy
- [x] tfe: tfe settings
- [x] tfe: proxy settings
- [x] tfe: replicated settings
- [x] tfe: license
- [x] tfe: install tfe
- [x] tfe: create user

# to Do  