pipeline {
    agent any
    tools {
        maven 'Maven3'
        jdk 'JDK17'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Test') {
            steps {
                bat 'mvn clean test'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'target/cucumber-html-reports/**/*.*', fingerprint: true
            junit 'target/surefire-reports/*.xml'
        }
    }
}
