node {
    checkout scm

    stage('Build') {
        docker.image('maven:3-jdk-8').inside('-v $HOME/.m2:/root/.m2') {
            sh 'mvn clean package'
        }
    }

    stage('Create Image') {
        def app = docker.build('demo/web-app')
    }
}
