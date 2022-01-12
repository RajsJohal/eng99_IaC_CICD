# Implementing IaC in Jenkins CICD Pipeline
- Set Up Jenkins server in EC2 instance
- Install plugins for Node, Git and Terraform
- Configure settings for Terraform
- Install CloudBees AWS Credentials plugin
- Attempted to create a pipeline job within jenkins to run my terraform main.tf file to create instances
- Issues with jenkins not being able to find my terraform plugin so had to manually dial into jenkins and install terraform and configure the path within the Global Tool Configuration. 