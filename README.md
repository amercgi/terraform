A Test Job to deploy VPC and Subnet with terraform with a CI/CD approach. We are testing terraform integration into a generic deployment pipeline.

W360Jenkins server on-prem will fetch this repo, perform automation and deploy infrastructure in GCP.

Pre-requisite:
A GCP Account with one Project.
Service Account with computing and network admin role attached, need to attach this service account to authorize the Jenkins machine to deploy the resources programmatically.
