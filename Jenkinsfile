pipeline {
agent ('master')
tools {
  terraform 'terraform'
}
options { ansiColor('xterm') } 
 stages { 
   stage ('Checkout Repo') { 
     steps { 
       cleanWs()
       git credentialsId: 'github-amercgi', url: 'https://github.com/amercgi/terraform.git'
      }
      } 

stage ('Terraform version') { 
  steps {
   sh '''
    terraform --version
   ''' 
    }
    }
    
    
        }
  }

