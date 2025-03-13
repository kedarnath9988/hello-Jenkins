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
            choice(name: 'terraform resorce', choices: ['apply', 'destroy' ], description: 'Pick something')
        }

        stages {
            stage('inti'){
                steps{
                    sh """
                      
                     terraform init -reconfigure 
                    """
                }
            }
            stage('plan'){
                steps{
                    sh """
                    echo this is test stage
                    """
                }
            }
            stage('apply'){
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