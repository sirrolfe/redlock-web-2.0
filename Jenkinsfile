pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sirrolfe/redlock-web-2.0.git'
            }
        }

        stage('Build and Deploy') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up -d --build'
            }
        }
    }
}
