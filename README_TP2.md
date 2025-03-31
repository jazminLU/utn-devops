# 🐳 Alumnos App - Repositorio Infraestructura y Despliegue

**Cursada:** DevOps, Integración y Agilidad Continua  
**Trabajo Práctico 2**  

---

## 📘 Descripción del Proyecto

Este repositorio contiene la infraestructura necesaria para desplegar **Alumnos App**, una aplicación web full stack que permite gestionar un listado de alumnos. Está compuesta por un frontend en HTML/CSS/JS servido por **NGINX**, un backend REST desarrollado con **Flask**, y una base de datos **PostgreSQL**. Todo se orquesta utilizando **Docker Compose** dentro de una máquina virtual provisionada con **Vagrant**.

Podés ver el repositorio de la aplicación en:  
🔗 https://github.com/jazminLU/alumnos-app.git

---

## ⚙️ Requisitos

- **Vagrant**: Versión mínima requerida: 2.2.7  
- **VirtualBox**: Versión mínima requerida: 6.0  
- **Git**: Para clonar el repositorio  

---

## IMPORTANTE

📌 Asegurate de estar en la rama unidad-2-docker del repositorio antes de levantar la máquina virtual, ya que es donde se encuentra el Vagrantfile y la configuración específica para este trabajo práctico. Podés cambiar de rama con:

```bash
git checkout unidad-2-docker
```

📌Para desplegar correctamente la máquina virtual con acceso a la red, es necesario especificar la interfaz de red del host que está activa y conectada. El siguiente comando en PowerShell permite identificar el nombre y la descripción de la interfaz de red que se encuentra en uso (por ejemplo, la red Wi-Fi actual):

```bash
Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | Select-Object Name, InterfaceDescription
```

Este comando filtra solo aquellas interfaces que están activas (Status -eq "Up") y muestra su nombre y descripción. Esta información es útil para completar correctamente el parámetro bridge en el archivo Vagrantfile, asegurando que la máquina virtual se conecte a la misma red que el host.
Actualiza en la 2da lines del Vagrantfile remplazando "tu_interfaz_de_red_host":

```bash
config.vm.network "public_network", bridge: "tu_interfaz_de_red_host"

```

## 🛠️ Instalación y Configuración

### 1️⃣ Clonar este repositorio

```bash
git clone https://github.com/jazminLU/utn-devops.git
cd utn-devops/tp2

```

### 2️⃣ Levantar la máquina virtual con Vagrant


```bash
vagrant up --provision

```

Este comando hará lo siguiente:

- Descargará la imagen base de Ubuntu 22.04 (Jammy).
- Instalará Docker y Docker Compose v2.
- Clonará el repositorio de **alumnos-app** en la máquina virtual.
- Reemplazará el backend local por una imagen de Docker ya publicada.
- Levantará la aplicación usando Docker Compose.

### 3️⃣ Acceder a la aplicación

Una vez finalizado el proceso, abrí tu navegador y accedé a:


```bash
http://localhost:8080

```

Deberías ver la interfaz de la app para registrar y listar alumnos.  
Además, podés acceder a la documentación de la API REST (Swagger) en:


```bash
http://localhost:8080/docs

```

---

## 🧠 ¿Qué hace esta app?

- Permite agregar alumnos por nombre usando un formulario.
- Lista todos los alumnos registrados.
- Guarda los datos en una base de datos PostgreSQL.
- Expone una API REST con documentación Swagger.

---

## 📦 Tecnologías utilizadas

- **Frontend:** HTML, CSS, JavaScript (servido por NGINX)  
- **Backend:** Flask (Python)  
- **Base de datos:** PostgreSQL  
- **Orquestación:** Docker Compose  
- **Infraestructura:** Vagrant + VirtualBox

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.

---

## ✨ Créditos

- Flask: https://flask.palletsprojects.com/  
- PostgreSQL: https://www.postgresql.org/  
- NGINX: https://www.nginx.com/  
- Docker: https://www.docker.com/  
- Documentación Swagger via Flask-RestX
