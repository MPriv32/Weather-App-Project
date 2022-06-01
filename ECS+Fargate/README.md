# Python-Cloud-Project-Part2

This is an extension of my Python Cloud Project Part 1 app, where I originally deployed my application as a docker image to ECR and Lambda. 

Instead of using Lambda to manage and deploy my instances, I created an ECS cluster from that image and used Fargate to manage the deployment of the instances.

I utilized CloudWatch for monitoring my containers and deployed the infrastructure with Terraform

## Summary of the services used in part 2 of this project:
- **AWS**
- **Python**
- **Docker**
- **Azure DevOps**
- **Amazon ECR**
- **Amazon ECS**
- **Fargate**
- **Terraform**
- **CloudWatch monitoring**

What's next?

I want to explore creating custom AMIs using Packer- which will have all of my application dependancies baked in, along with a DataDog agent for system monitoring

This update can be seen in **Python-Cloud-Project-Part3**
