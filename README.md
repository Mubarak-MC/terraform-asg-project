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

terraform plan

terraform apply

## Validation

- Verify ALB traffic distribution
- Generate CPU load using stress
- Verify Auto Scaling events

## Cleanup

terraform destroy
