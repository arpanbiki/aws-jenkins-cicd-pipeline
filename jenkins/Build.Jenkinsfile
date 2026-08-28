pipeline {

    agent {
        label 'Slave1'
    }

    parameters {
        string(
            name: 'BRANCH',
            defaultValue: 'develop',
            description: 'Git branch to build'
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

        stage('Trigger Test') {
            steps {
                build(
                    job: 'Test',
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
