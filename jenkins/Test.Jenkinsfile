pipeline {

    agent {
        label 'Slave2'
    }

    parameters {
        string(
            name: 'BRANCH',
            defaultValue: 'develop',
            description: 'Git branch to test'
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

        stage('Docker Build') {
            steps {
                sh 'docker build -t finalrelease .'
            }
        }

        stage('Application Test') {
            steps {
                sh '''
                    docker rm -f test-container 2>/dev/null || true

                    docker run -d \
                      --name test-container \
                      -p 8081:80 \
                      finalrelease

                    sleep 10

                    curl -f http://localhost:8081

                    docker rm -f test-container
                '''
            }
        }

        stage('Trigger Production') {

            when {
                expression {
                    params.BRANCH == 'master'
                }
            }

            steps {
                build(
                    job: 'Prod',
                    parameters: [
                        string(
                            name: 'BRANCH',
                            value: "${params.BRANCH}"
                        )
                    ]
                )
            }
        }
    }
}
