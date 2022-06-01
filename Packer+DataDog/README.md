# Python-Cloud-Project-Part3

Continuing off from part 2 where I created a docker image and deployed it using ecs + fargate, I wanted to explore creating custom AMIs via Packer.

I created a custom image with Packer, which included all of my application dependancies and a bash script to install a DataDog agent for system monitoring. 

I deployed an EC2 instance with my custom Packer image, inside a subnet, inside a VPC with the appropriate security group rules to only allow SSH traffic. 

All of my infrastructure was deployed via Terraform.

## Summary of the services used in Part 2 of this project:
- **AWS**
- **Python**
- **Packer**
- **Bash Scripting**
- **Terraform**
- **DataDog Monitoring**

What's next?

For the last and final addition of this project, I want to incorporate configuration management using Ansible and integrate Ansible wih DataDog to respond to any metric alarms
