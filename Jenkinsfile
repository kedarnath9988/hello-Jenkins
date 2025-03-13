pipeline{
        agent {
            label 'node-01'
        } 
        options {
            timeout(time:30, unit:'MINUTES')
            disableConcurrentBuilds()
            ansiColor('xterm')
        }
        parameters {
            choice(name: 'terraform resorce ', choices: ['apply', 'destroy' ], description: 'Pick something')
        }

        stages {
            stage('build'){
                steps{
                    sh """
                    echo this is the buils stage 
                    """
                }
            }
            stage('test'){
                steps{
                    sh """
                    echo this is test stage
                    """
                }
            }
            stage('deploy'){
                steps{
                    sh """
                    echo this is deploy stage
                    """
                }
            }
        }
        post {
            always {
                echo "i will run always "
            }
            success {
                echo 'pipeline is successfull'
            }
            failure {
                echo 'pipeline is failed'
            }

        }

}