pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the application code from your GitHub repository using the main branch
                git branch: 'main', url: 'https://github.com/MarzouguiAhmed9/my-html-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Change to the directory where the Dockerfile is located

                        sh 'docker build -t marzouguiAhmed9/my-html-app:latest .'

                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove the existing container if it exists
                    sh 'docker stop my-html-app || true'
                    sh 'docker rm my-html-app || true'

                    // Run a new container from the image
                    sh 'docker run -d --name my-html-app -p 8088:80 marzouguiAhmed9/my-html-app:latest'
                }
            }
        }
    }

    post {
        always {
            // Clean up Docker images if needed
            sh 'docker rmi marzouguiAhmed9/my-html-app:latest || true'
        }
    }
}
