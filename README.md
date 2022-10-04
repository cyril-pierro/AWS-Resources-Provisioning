# Terraform provisioning for multiple resources

## Setup script for the following resources on AWS

- VPC
- Subnets
- Internet Gateway
- Router-Table and Associations
- Router 53
- RDS

**NOTE** Before you run the whole terraform script
please set the following in your environment

`export AWS_ACCESS_KEY_ID=your access key`

`export AWS_SECRET_ACCESS_KEY=your secret key`

`export AWS_DEFAULT_REGION=us-east-1`

`cd setup/ `

## Now, we are set to go, run the terraform command to start your provisioning

`terraform apply -auto-approve `
