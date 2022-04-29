Vagrant.configure("2") do |config|

    config.vm.define "proxy" do |proxy|
      proxy.vm.box = "bento/ubuntu-20.04"
      proxy.vm.hostname = "proxy"
      proxy.vm.network "private_network", ip: "192.168.56.34"

      proxy.vm.provision "shell", path: "vagrant_scripts/install_mitmproxy.sh"
      proxy.vm.provision "shell", path: "vagrant_scripts/configure_mitmproxy.sh"
  end

  config.vm.define "tfe" do |tfe|
      tfe.vm.box = "bento/ubuntu-20.04"
      tfe.vm.hostname = "tfe"
      tfe.vm.network "private_network", ip: "192.168.56.33"
      tfe.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 2
      end

      tfe.vm.provision "shell", path: "vagrant_scripts/configure_tfe_settings.sh"
      tfe.vm.provision "shell", path: "vagrant_scripts/configure_replicated.sh"
      tfe.vm.provision "shell", path: "vagrant_scripts/configure_apt.sh"
  end    

end
