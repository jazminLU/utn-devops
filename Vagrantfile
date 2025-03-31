Vagrant.configure("2") do |config|
  config.vm.network "public_network", bridge: "Intel(R) Wi-Fi 6 AX200 160MHz"

  config.vm.box = "ubuntu/jammy64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", inline: <<-SHELL
    echo "🛠️ Actualizando sistema..."
    apt-get update -y
    apt-get install -y apt-transport-https ca-certificates curl software-properties-common git

    echo "🐳 Instalando Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    systemctl enable docker
    usermod -aG docker vagrant

    echo "📦 Instalando Docker Compose v2..."
    mkdir -p /home/vagrant/.docker/cli-plugins
    curl -SL https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-linux-x86_64 -o /home/vagrant/.docker/cli-plugins/docker-compose
    chmod +x /home/vagrant/.docker/cli-plugins/docker-compose
    chown -R vagrant:vagrant /home/vagrant/.docker

    echo "📥 Clonando proyecto alumnos-app..."
    cd /home/vagrant
    if [ ! -d "alumnos-app" ]; then
      sudo -u vagrant git clone https://github.com/jazminLU/alumnos-app.git
    fi

    echo "🧼 Reemplazando backend local por imagen publicada..."
    cd /home/vagrant/alumnos-app
    sed -i 's|build: ./app|image: jazminlu/alumnos-app-backend:1.0.0|' docker-compose.yml

    echo "🚀 Levantando contenedores..."
    sudo -u vagrant /home/vagrant/.docker/cli-plugins/docker-compose up -d
  SHELL
end

