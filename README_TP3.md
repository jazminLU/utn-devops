# Jenkins con Puppet - UTN DevOps

Este proyecto instala automáticamente Jenkins utilizando **Puppet** en una máquina virtual gestionada con **Vagrant** y **VirtualBox**.

## Tecnologías usadas
- Vagrant
- VirtualBox
- Ubuntu 20.04 (focal64)
- Puppet 7
- Jenkins 

## ¿Qué hace este proyecto?

✔️ Instala Java 17  
✔️ Agrega el repositorio oficial de Jenkins  
✔️ Instala Jenkins automáticamente con Puppet  
✔️ Expone Jenkins en el puerto `8080` para acceder desde el host  
✔️ Permite crear un usuario administrador y gestionar plugins desde el navegador

## ¿Cómo levantar el entorno?

1. Clonar este repositorio:
```bash
git clone https://github.com/jazminLU/utn-devops.git      
cd utn-devops
git checkout unidad-3-puppet

  ```
2. Levantar la máquina virtual:
 ```bash
 vagrant up
 ```
3. Esperar a que termine toda la instalación.

4. Acceder a Jenkins desde el navegador: http://localhost:8080

5. Obtener la contraseña inicial con:
 ```bash
 vagrant ssh -c "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"

 ```
6. Seguir el asistente de instalación de Jenkins:

-Instalar plugins sugeridos

-Crear usuario administrador



