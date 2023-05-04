pipeline {
agent ('W360JENKINS')
tools {
  terraform 'terraform'
}
options { ansiColor('xterm') } 
 stages { 
   stage ('Checkout Repo') { 
     steps { 
       cleanWs()
       sh  'git clone https://w360bitbucket.mdc.cginet:8443/scm/gwdevops/jenkins-integration-test.git'
      }
      } 

stage ('Terraform version') { 
  steps {
   sh '''
    terraform --version
   ''' 
    }
    }
    
  stage ('Terraform init') { 
  steps {
   sh '''
   cd jenkins-integration-test/
   terraform init
   ''' 
   }
   }
   
  stage ('Terraform plan') { 
  steps {
   sh '''
   cd jenkins-integration-test/
   terraform plan -out=tfplan.out
   terraform show -json tfplan.out
   ''' 
   }
   }
   
 stage ('Terraform apply') { 
  steps {
   sh '''
   cd jenkins-integration-test/
   terraform apply --auto-approve
   ''' 
   }
        post { 
        always { 
            cleanWs()
         }
        }
       }
  }
}
