groovy
pipeline {
    agent any

    stages {
        stage('1. Code Ophalen') {
            steps {
                echo 'De allernieuwste code wordt binnengehaald van GitHub...'
            }
        }

        stage('2. Deploy naar Test (T)') {
            steps {
                sshagent(['debian-server-ssh']) {
                    echo 'We loggen in op de server om de Test-omgeving bij te werken...'
                    // Jenkins navigeert naar de test-map en overschrijft de index.html met de code uit GitHub
                    sh 'ssh -o StrictHostKeyChecking=no cursus@host.containers.internal "echo \\"<h1>Geüpdatet door Jenkins! Dit is build #${BUILD_NUMBER}</h1>\\" > ~/otap/test/app/index.html"'
                }
            }
        }
    }
}