pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag nodecicd-img:v1.0 .'
            }
        }
        stage('Delivery') {
            steps {
                sh 'docker container rm nodecicd-cont'
                sh 'docker run --name nodecicd-cont -p 8080:2000 nodecicd-img:v1.0 &'
            }
        }
    }
}