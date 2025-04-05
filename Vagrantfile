Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "puppet-client"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.boot_timeout = 300

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 1
  end

  config.vm.synced_folder "./manifests", "/manifests"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update -y
    apt-get install -y wget gnupg
    wget https://apt.puppet.com/puppet7-release-focal.deb
    dpkg -i puppet7-release-focal.deb
    apt-get update -y
    apt-get install -y puppet-agent

    export PATH=$PATH:/opt/puppetlabs/bin

    puppet apply /manifests/site.pp

    config.vm.provision "shell", inline: <<-SHELL
  echo ""
  echo "==============================================="
  echo "👉 Jenkins admin password:"
  sudo cat /var/lib/jenkins/secrets/initialAdminPassword
  echo "==============================================="

SHELL
 
end

