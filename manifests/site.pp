# Instala Java 17
package { 'openjdk-17-jdk':
  ensure => installed,
}

# Descarga la clave GPG moderna para Jenkins
exec { 'download_jenkins_key':
  command => 'wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key',
  creates => '/usr/share/keyrings/jenkins-keyring.asc',
  path    => ['/usr/bin', '/bin'],
}

# Define el apt update
exec { 'apt_update':
  command     => '/usr/bin/apt-get update',
  refreshonly => true,
  path        => ['/usr/bin', '/bin'],
}

# Agrega el repositorio con la firma moderna
file { '/etc/apt/sources.list.d/jenkins.list':
  ensure  => file,
  content => "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/\n",
  notify  => Exec['apt_update'],
  require => Exec['download_jenkins_key'],
}

# Instala Jenkins
package { 'jenkins':
  ensure  => installed,
  require => [ Exec['apt_update'], Package['openjdk-17-jdk'] ],
}

# Habilita y arranca Jenkins
service { 'jenkins':
  ensure    => running,
  enable    => true,
  require  => Package['jenkins'],
}
