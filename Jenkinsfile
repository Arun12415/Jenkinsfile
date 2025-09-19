@Library('Shared') _   // Use Shared Library

pipeline {
    agent { label "Arun" }

    stages {
        stage("Hello") {
            steps {
                script {
                    hello()
                }
            }
        }

        stage("Code") {
            steps {
                script {
                    clone("https://github.com/Arun12415/Jenkinsfile.git", "master")
                }
            }
        }

        stage("Build") {
            steps {
                script {
                    docker_build("notes-app", "latest", "arunrao12")
                }
            }
        }

        stage("Push to DockerHub") {
            steps {
                script {
                    docker_push("notes-app", "latest", "arunrao12")
                }
            }
        }

        stage("Deploy") {
            steps {
                echo "This is deploying the code"
                sh " docker-compose down && docker-compose up -d"
            }
        }
    }
}
