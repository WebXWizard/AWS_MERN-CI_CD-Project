pipeline {
    agent any

    environment {
        // AWS_CREDENTIALS = credentials('aws-credentials-id')
        // DOCKER_REGISTRY = 'your-docker-registry'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                script {
                    sh 'docker-compose build'
                }
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // sh 'docker-compose run client npm test'
                // sh 'docker-compose run server npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to EC2...'
                // sshagent(['ec2-ssh-key']) {
                //    sh 'ssh -o StrictHostKeyChecking=no user@ec2-ip "cd /path/to/app && git pull && docker-compose up -d --build"'
                // }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
