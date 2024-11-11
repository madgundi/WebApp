pipeline {
    agent any                // Defines where the pipeline should run (any available agent)
    tools {
        maven 'Maven 3.9.9'  // Use the Maven installation name configured in Jenkins
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from the repository
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Run Maven clean and package commands to build the project
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Run Maven test command to execute unit tests
                sh 'mvn test'
            }
            post {
                always {
                    // Publish JUnit test results, if any, for better reporting in Jenkins
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Deploy') {
            steps {
                // Add deployment commands here (optional)
                echo 'Deploy stage - customize for your deployment needs'
            }
        }
    }
    post {
        success {
            echo 'Build completed successfully'
        }
        failure {
            echo 'Build failed'
        }
    }
}
