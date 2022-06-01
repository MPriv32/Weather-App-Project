# Python-Cloud-Project-Part1

This is one of my favorite projects I've done so far! The goal of this project was to sharpen my **python** skills and 
write a simple **REST API** that will send an email, giving myself a weather update on the city that I chose.

## Summary of the services used in this project:
- **AWS**
- **Python**
- **Azure DevOps**
- **Amazon ECR**
- **Docker**
- **Lambda**
- **Lambda Layers**

I started off by creating my REST API and pushing it to my repository.

I then created a CI/CD pipeline using **AzureDevOps** which did the following tasks:
- Packaged my python application
- Created a Docker Image
- Pushed the image to Amazon ECR
- Ran an AWS CLI command to update my Lambda function with the newest Docker Image

I also utilized **Lambda Layers** to store my dependencies for this application, making my application code smaller and easier to maintain.

What's next?

In the near future, I plan on creating a testing stage in my pipeline to test my application before it creates a docker image!
