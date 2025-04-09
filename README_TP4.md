# 📦 Trabajo Práctico 4 – Jenkins Pipeline

Este proyecto configura un **Pipeline de Jenkins** utilizando un `Jenkinsfile` versionado en el repositorio, que ejecuta automáticamente pruebas unitarias sobre una aplicación alojada en otro repositorio GitHub.

---

## Tecnologías usadas

- Jenkins
- Git & GitHub
- Puppet
- Vagrant
- VirtualBox
- Node.js
- Jest 
- Ubuntu 20.04 

---

## ¿Qué hace este proyecto?

✔️ Configura Jenkins mediante Puppet en una máquina virtual  
✔️ Crea un pipeline con múltiples stages utilizando un `Jenkinsfile`  
✔️ Clona automáticamente un repositorio de aplicación  
✔️ Instala las dependencias con `npm install`  
✔️ Ejecuta pruebas unitarias con `npm test`  
✔️ Muestra resultado del build (éxito o error)  

---

## ¿Cómo levantar el entorno?

1. Clonar este repositorio:

```bash
git clone https://github.com/jazminLU/utn-devops.git      
```

## 🔗 Repositorios utilizados

Repositorio Jenkins & Puppet:
https://github.com/jazminLU/utn-devops (rama unidad-4-jenkins)

Repositorio de la app con pruebas:
https://github.com/jazminLU/ToDo-API