# Terraform AWS ALB + Auto Scaling Group

## Overview

This project provisions AWS infrastructure using Terraform modules.

Features:
- VPC
- Public Subnets
- Security Groups
- Launch Template
- Application Load Balancer
- Target Group
- Auto Scaling Group
- CPU-based Auto Scaling

## Architecture

[Architecture Diagram]

## Deployment

terraform init
<img width="1452" height="832" alt="terraform validation" src="https://github.com/user-attachments/assets/e5ef3517-69a3-4f16-8685-2482f6273eee" />


terraform plan
<img width="1541" height="862" alt="terraform plan" src="https://github.com/user-attachments/assets/e896563a-2ebf-4da6-a87b-dead3c8d7e50" />


terraform apply
<img width="1530" height="867" alt="terraform apply" src="https://github.com/user-attachments/assets/3cd4c48f-dbb2-4a4e-9c35-6f97dbaf000b" />


## Validation

- Verify ALB traffic distribution
- Generate CPU load using stress
- Verify Auto Scaling events

## Cleanup

terraform destroy
