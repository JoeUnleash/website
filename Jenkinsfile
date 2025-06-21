pipeline {
  agent none
  stages {
    stage("Git Cloned") {
      steps {
        echo "Git cloned successfully ${env.BRANCH_NAME} on node ${env.NODE_NAME}"
      }
    }
    stage("Deploy the file to develop") {
      when {
        branch 'develop'
      }
      agent { label 'slave2' }
      steps {
        echo "File Copied successfully ${env.BRANCH_NAME} on node ${env.NODE_NAME}"
        sh 'rm -rf /var/www/html/* && cp -r ./* /var/www/html/'
      }
    }
    stage("Deploy the file to master") {
      when {
        branch 'master'
      }
      agent { label 'slave1' }
      steps {
        echo "File Copied successfully ${env.BRANCH_NAME} on node ${env.NODE_NAME}"
        sh 'rm -rf /var/www/html/* && cp -r ./* /var/www/html/'
      }
    }
  }
}
