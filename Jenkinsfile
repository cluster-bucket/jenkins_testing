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
                sh './script/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
