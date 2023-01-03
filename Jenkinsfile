pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                if (isUnix()) --> sh "mvn -f pom.xml clean package"
                else --> bat "mvn -f pom.xml clean package"
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}
