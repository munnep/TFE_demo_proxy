Vagrant.configure("2") do |config|

    config.vm.define "proxy" do |proxy|
      proxy.vm.box = "bento/ubuntu-20.04"
      proxy.vm.hostname = "proxy"
      proxy.vm.network "private_network", ip: "192.168.56.34"
  end

  config.vm.define "tfe" do |tfe|
      tfe.vm.box = "bento/ubuntu-20.04"
      tfe.vm.hostname = "tfe"
      tfe.vm.network "private_network", ip: "192.168.56.33"
      tfe.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 2
      end
  end    

end
