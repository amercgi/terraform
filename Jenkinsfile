pipeline {
agent ('any')
tools {
  terraform 'terraform'
}
stages { 
   stage ('Checkout Repo') { 
     steps { 
       cleanWs()
       sh  'git clone https://github.com/amercgi/terraform.git'
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

