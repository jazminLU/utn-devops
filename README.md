# 🚀 Galaxia 3D - Infraestructura y Despliegue

**Cursada:** DevOps, Integración y Agilidad Continua  
**Trabajo Práctico 1 - Grupo 2**  
**Integrantes:**  
- Erica Romina Acha Callejas  
- Guillermo Daniel Arias  
- Jazmin Luna  
- Valentin Rodriguez  
- Facundo Sanchez  

---

## 🌌 Descripción del Proyecto

Este repositorio contiene la infraestructura necesaria para desplegar **Galaxia 3D** https://jazminlu.github.io/galaxia-3d/ , una aplicación web interactiva que muestra una galaxia 3D utilizando Three.js. La aplicación está diseñada para ser servida a través de **Apache** en una máquina virtual configurada con **Vagrant**.

El script de creación apunta a la app: **Galaxia 3D**, que corresponde a un sitio estático que presenta una visualización 3D de una galaxia con estrellas y una nebulosa envolvente.

---

## 🛠️ Requisitos

- **Vagrant**: Versión mínima requerida: 2.2.7  
- **VirtualBox**: Versión mínima requerida: 6.0  
- **Git**: Para clonar el repositorio  

---

## 📦 Instalación y Configuración

### 1️⃣ Clonar el repositorio

Primero, clona este repositorio.

### 2️⃣ Levantar la máquina virtual con Vagrant
Ejecuta el siguiente comando para crear y configurar la máquina virtual:

```bash
vagrant up --provision

```
Este comando hará lo siguiente:

Descargará la imagen de Ubuntu 18.04 LTS.

Instalará Apache y Git en la máquina virtual.

Clonará el repositorio de la aplicación en /var/www/html.

Configurará Apache para servir la aplicación en el puerto 8888.

### 3️⃣ Acceder a la aplicación

Una vez que la máquina virtual esté en funcionamiento, abre tu navegador y visita:

```bash
http://localhost:8888
```
Deberías ver la galaxia 3D super realista en acción.


### 📜 Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.

### ✨ Créditos

Three.js: https://threejs.org/

Texturas de nebulosa: NASA Image Library.

¡Gracias por visitar Galaxia 3D! Esperamos que disfrutes explorando el espacio. 🚀