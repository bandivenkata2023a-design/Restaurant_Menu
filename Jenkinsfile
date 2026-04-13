pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Step to build Docker image
                    sh 'docker build -t myapp:latest .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Step to run tests
                    sh 'docker run myapp:latest test'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Step to deploy to Kubernetes
                    sh 'kubectl apply -f k8s/deployment.yaml'
                }
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline execution failed!'
        }
    }
}