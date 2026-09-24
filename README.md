# AWS Junior Portfolio — Shubham Jain

Hands-on AWS projects, each documented with the architecture, the exact steps taken, issues hit along the way, and what I learned. Built to demonstrate practical cloud/DevOps skills rather than just certifications.

📫 [LinkedIn – Shubham Jain](https://www.linkedin.com/in/shubham-jain-868a11352/) · 📄 [Resume](#)

## Projects

| # | Project | What it covers | Tech Stack |
|---|---------|----------------|------------|
| 01 | [Ice Cream S3 Website](./project-01-Icecream-s3-website) | Static website hosting on S3 | S3, Static Web Hosting |
| 02 | [Secure S3 Storage](./project-02-secure-s3-storage) | Locking down S3 storage for company data — bucket policies, encryption, access control | S3, IAM, Bucket Policies |
| 03 | [VPC Manual Setup](./project-03-VPC-manual) | Building a VPC by hand — subnets, route tables, gateways | VPC, Networking |
| 04 | [Tomcat + RDS Deployment](./project-04-Tomcat-rds-deployment) | 2-tier Java app on EC2/Tomcat with an SSL-secured RDS MySQL backend | EC2, RDS, Tomcat, JDBC |
| 05 | [Auto Scaling + ALB](./project-05-asg-alb-deployment) | Highly-available web tier with EC2 Auto Scaling and Application Load Balancer | EC2, ASG, ALB |
| 06 | [Terraform 3-Tier AWS VPC](./project-06-3tier) | Full 3-tier architecture (VPC, ALB, ASG, RDS) provisioned end-to-end with Terraform — IaC version of Project 03 | Terraform, VPC, ALB, ASG, RDS |
| 07 | [Serverless CSV Pipeline - S3 → Lambda → DynamoDB](https://github.com/shubham00492/aws-serverless-csv-pipeline) | Event-driven pipeline: CSV upload to S3 auto-triggers Lambda to parse and store in DynamoDB. Fixed AccessDenied & case-sensitive table issues, verified via CloudWatch | S3, Lambda (Python), DynamoDB, IAM Least-Privilege, CloudWatch, SNS |
| 08 | [Terraform EC2 with S3 Backend + DynamoDB Locking](./project-08-terraform-ec2-s3-dynamo) | Production-grade Terraform setup: Remote state on S3 + state locking with DynamoDB to enable safe team collaboration | Terraform, EC2, S3 Remote Backend, DynamoDB Locking, IAM |

Each project folder has its own README with the full write-up, an architecture diagram, and screenshots. Project 07 is a standalone repo with live proof (Account: 320042237934, CloudWatch `File mili: test.csv → Done`).

## Project Highlights

### Latest: Project 08 - Terraform EC2 with S3 Backend + DynamoDB Locking

This project solves the biggest problem with local Terraform state in a team environment.

**What I built:**
- Migrated Terraform state from `local .tfstate` to a shared, versioned **S3 backend** (`s3://...`)
- Created a **DynamoDB table** with `LockID` as partition key for state locking — prevents two engineers from running `terraform apply` at the same time and corrupting state
- Made the entire config variable-driven (`variables.tf` + `terraform.tfvars`) — No hardcoded AMI, region, instance type, or bucket names
- Implemented complete IaC workflow: `terraform init` → `fmt` → `validate` → `plan` → `apply` → `terraform state show`

**Key Learnings:**
- Why local state fails in teams and how S3 backend solves it
- How DynamoDB locking works under the hood
- Importance of `backend.tf` separation and remote state best practices
- Verified locking by simulating concurrent applies

> Folder: `./project-08-terraform-ec2-s3-dynamo` | Tech: Terraform, EC2, S3 (Remote State), DynamoDB (State Locking)

### Project 07 - Serverless CSV Pipeline
- Zero-server, pay-per-use architecture
- Real debugging: `AccessDenied` (S3 IAM policy fix), `ResourceNotFoundException` (DynamoDB case-sensitivity: `Processedrecords` vs `ProcessedRecords`)
- Production thinking: 1-bucket MVP → 2-bucket pattern (raw + processed) to avoid re-trigger loops
- End-to-end verification via CloudWatch Logs and DynamoDB scan

## Architecture Overview
