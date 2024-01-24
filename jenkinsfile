currentBuild.displayName = "nginx: " + currentBuild.number

pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh "docker build . -t nginxdockerimage"
                sh "docker rm -f \$(docker ps -q)"
            }
        }

        stage('Spin Container') {
            steps {
                sh "docker run -itd -p 6666:80 --name nginxapp nginxdockerimage"
            }
        }
    
    }
}
