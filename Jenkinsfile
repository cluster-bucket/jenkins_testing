pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                nodejs('Node latest') {
                    sh 'cd project && npm install'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                nodejs('Node latest') {
                  sh './test.sh'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
