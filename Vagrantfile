Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"  
  config.vm.network "forwarded_port", guest: 80, host: 8888  

  config.vm.provision "shell", inline: <<-SHELL

    sudo apt-get update
    sudo apt-get install -y git apache2

    sudo rm -rf /var/www/html/{*,.*} 2>/dev/null  

    sudo git clone https://github.com/jazminLU/galaxia-3d.git /var/www/html

    sudo chown -R www-data:www-data /var/www/html

    sudo systemctl restart apache2
  SHELL
end