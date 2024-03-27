pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'BUILD EXECUTION STARTED'
                // script {
                //     sh 'docker build --target builder -t my-golang-app .'
                // }
            }
        }
        
        stage('Test') {
            steps {
                echo 'UNIT TEST EXECUTION STARTED'
                // script {
                //     sh 'docker build --target tester -t my-golang-app .'
                //     sh 'docker run --rm my-golang-app tester'
                // }
            }
        }
        
        // stage('Push to Docker Hub') {
        //     steps {
        //         script {
        //            withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
        //             sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
        //             sh 'docker push danilorapaic00/test-jenx'
        //             }
        //         }
        //     }
        // }
    }
}