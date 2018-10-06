node {
    checkout scm

    stage('Back-end') {
        docker.image('maven:3-alpine').inside('-v $HOME/.m2:/root/.m2') {
            sh 'mvn clean package'
        }
    }
}
