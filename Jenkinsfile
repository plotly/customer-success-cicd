pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/halemade/github-cicd', branch: 'main')
      }
    }

    stage('echo env') {
      steps {
        sh 'ls -l'
      }
    }

    stage('deploy') {
      steps {
        echo '"Preparing to deploy"'
        sh 'echo "dash enterprise url: ${DASH_ENTERPRISE_URL}"'
        sh 'bash jenkinsdeploy.sh'
      }
    }

  }
}
