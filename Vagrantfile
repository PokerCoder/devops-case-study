Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.ssh.password = "vagrant"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./", "/home/devops-case-study"
  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.playbook = "ansible/playbook.yml"
    ansible.inventory_path = "ansible/environments/local/inventory"
    ansible.verbose = "v"
  end
  config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
  end
end
