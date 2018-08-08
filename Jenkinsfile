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

    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure {
            echo 'Fail so hard'
        }
        success {
            echo 'It was a raging success!'
        }
    }
}
