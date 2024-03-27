pipeline {
    agent any
    // def gitCommitId = sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()

    // environment {
    //     DOCKER_HUB_CREDENTIALS = credentials('docker-hub')
    // }

    stages {
        // stage('Preparation'){
        //     steps{
        //         checkout scm
        //     }
        // }
        stage('Build') {
            steps {
                sh "docker build -t my-go-app ."
            }
        }
        
        stage('Test') {
            steps {
                 sh "docker run my-go-app:${env.BUILD_NUMBER} go test ./..."
            }
        }
        
        stage('Push to Docker Hub') {
            steps {
                script {
                    // docker.withRegistry('https://index.docker.io/v1/', DOCKER_HUB_CREDENTIALS) {
                        // def gitCommitId = sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()
                        // sh 'docker tag my-go-app danilorapaic00/test-jenx:${gitCommitId}'
                    //     sh 'docker push danilorapaic00/test-jenx:${gitCommitId}'
                    // }
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                        sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                        sh "docker push shanem/spring-petclinic:${env.BUILD_NUMBER}"
                    }
                }
            }
        }
    }
}