pipeline {
agent ('any')
tools {
  terraform 'terraform'
}
 stages {
   stage ('Checkout Repo') {
     steps {
       cleanWs()
       sh  'git clone git clone https://github.com/amercgi/terraform.git'
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
   cd terraform/
   terraform init
   '''
   }
   }

  stage ('Terraform plan') {
  steps {
   sh '''
   cd terraform/
   terraform plan -out=tfplan.out
   terraform show -json tfplan.out
   '''
   }
   }

 stage ('Terraform apply') {
  steps {
   sh '''
   cd terraform/
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
