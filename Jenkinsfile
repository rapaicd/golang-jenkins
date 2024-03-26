pipeline {
    agent any
    
    stages {
        stage('Build') {
            echo 'BUILD EXECUTION STARTED'
            steps {
                script {
                    sh 'docker build -t my-golang-app .'
                }
            }
        }
        
        stage('Test') {
            steps {
                echo 'UNIT TEST EXECUTION STARTED'
                script {
                    sh 'docker run --rm my-golang-app tester'
                }
            }
        }
        
        stage('Push to Docker Hub') {
            steps {
                script {
                   withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
                    sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
                    sh 'docker push danilorapaic00/test-jenx'
                    }
                }
            }
        }
    }
}