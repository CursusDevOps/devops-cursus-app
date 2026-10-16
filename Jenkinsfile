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
                    // We gebruiken het stabiele hoofd IP van de server
                    sh 'ssh -o StrictHostKeyChecking=no cursus@192.168.1.68 "echo \\"<h1>Bijgewerkt door Jenkins! Dit is build #${BUILD_NUMBER}</h1>\\" > ~/otap/test/app/index.html"'
                }
            }
        }
    }
}