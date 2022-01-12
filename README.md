# Implementing IaC in Jenkins CICD Pipeline
- Set Up Jenkins server in EC2 instance - refer to jenkins cicd repo for guide. 
- Install plugins for Node, Git and Terraform
- Configure settings for Terraform
- Install CloudBees AWS Credentials plugin
- Attempted to create a pipeline job within jenkins to run my terraform main.tf file to create instances
- Issues with jenkins not being able to find my terraform plugin so had to manually dial into jenkins and install terraform and configure the path within the Global Tool Configuration. 
- Add AWS Credentials (access and secret keys) in manage jenkins and Global Config settings

```
pipeline {
    agent any
    stages {
        stage('Remove files') {
            steps {
                sh 'rm -rf eng99_IaC_CICD'
            }
        }
        stage('Checkout') {
            steps {
                sh 'git clone https://github.com/RajsJohal/eng99_IaC_CICD.git'
            }
        }
        stage('Apply Terraform') {
            steps {
                dir('eng99_IaC_CICD/terraform') {
                    sh 'terraform init'
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
```

## Ansible Integration
- Ansible Plugin, downloaded ansible and pytho on jenkins ec2 and added path to the binary folder where ansible lies. 
- Playbooks can be stored within jenkins, along with the vault and hosts file. 
- 