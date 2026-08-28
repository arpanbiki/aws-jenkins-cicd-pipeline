pipeline {

    agent {
        label 'built-in'
    }

    parameters {
        string(
            name: 'BRANCH',
            defaultValue: 'master',
            description: 'Production branch'
        )
    }

    stages {

        stage('Checkout') {
            steps {
                git(
                    branch: "${params.BRANCH}",
                    credentialsId: 'github-credentials',
                    url: 'https://github.com/arpanbiki/website.git'
                )
            }
        }

        stage('Build Production Image') {
            steps {
                sh 'docker build -t finalrelease .'
            }
        }

        stage('Stop Existing Container') {
            steps {
                sh '''
                    docker rm -f finalrelease-container 2>/dev/null || true
                '''
            }
        }

        stage('Deploy Production') {
            steps {
                sh '''
                    docker run -d \
                      --name finalrelease-container \
                      -p 80:80 \
                      finalrelease
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                    sleep 10
                    docker ps
                    curl -f http://localhost
                '''
            }
        }
    }
}
