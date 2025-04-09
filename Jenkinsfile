pipeline {
    agent any

    stages {
        stage('Clonar repositorio app') {
            steps {
                git 'https://github.com/jazminLU/repositorio-aplicacion.git'
            }
        }

        stage('Instalar dependencias') {
            steps {
                sh 'npm install'  // cambia esto según el lenguaje de tu app
            }
        }

        stage('Ejecutar pruebas unitarias') {
            steps {
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Build exitoso'
        }
        failure {
            echo 'Hubo errores en el pipeline'
        }
    }
}
