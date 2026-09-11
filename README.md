# AWS Junior Portfolio — Shubham Jain

Hands-on AWS projects, each documented with the architecture, the exact steps taken, issues hit along the way, and what I learned. Built to demonstrate practical cloud/DevOps skills rather than just certifications.

📫 [LinkedIn – Shubham Jain](https://www.linkedin.com/in/shubham-jain-868a11352/) · 📄 [Resume](#)

## Projects

| # | Project | What it covers | Tech |
|---|---------|-----------------|------|
| 01 | [Ice Cream S3 Website](./project-01-Icecream-s3-website) | Static website hosting on S3 | S3, Static Web Hosting |
| 02 | [Secure S3 Storage](./project-02-secure-s3-storage) | Locking down S3 storage for company data — bucket policies, encryption, access control | S3, IAM, Bucket Policies |
| 03 | [VPC Manual Setup](./project-03-VPC-manual) | Building a VPC by hand — subnets, route tables, gateways | VPC, Networking |
| 04 | [Tomcat + RDS Deployment](./project-04-Tomcat-rds-deployment) | 2-tier Java app on EC2/Tomcat with an SSL-secured RDS MySQL backend | EC2, RDS, Tomcat, JDBC |
| 05 | [Auto Scaling + ALB](./project-05-asg-alb-deployment) | Highly-available web tier with EC2 Auto Scaling and Application Load Balancer | EC2, ASG, ALB |
| 06 | [Terraform 3-Tier AWS VPC](./project-06-3tier) | Full 3-tier architecture (VPC, ALB, ASG, RDS) provisioned end-to-end with Terraform — IaC version of Project 03 | Terraform, VPC, ALB, ASG, RDS |
| 07 | [Serverless CSV Pipeline - S3 → Lambda → DynamoDB](https://github.com/shubham00492/aws-serverless-csv-pipeline) | Event-driven pipeline: CSV upload to S3 auto-triggers Lambda to parse and store in DynamoDB. Fixed AccessDenied & case-sensitive table issues, verified via CloudWatch | S3, Lambda (Python), DynamoDB, IAM Least-Privilege, CloudWatch, SNS |

Each project folder has its own README with the full write-up, an architecture diagram, and screenshots. Project 07 is a standalone repo with live proof (Account: 320042237934, CloudWatch `File mili: test.csv → Done`).

## Project Highlights

**Latest: Project 07 - Serverless**
- Zero-server, pay-per-use
- Real debugging: `AccessDenied` (S3 policy), `ResourceNotFoundException` (DynamoDB case-sensitivity: `Processedrecords` vs `ProcessedRecords`)
- Production thinking: 1-bucket MVP → 2-bucket pattern (raw + processed) to avoid re-trigger loops

## About me

Junior cloud/DevOps engineer, hands-on with AWS. Currently building out this portfolio one real project at a time — replacing tutorials with things I've actually deployed, broken, and fixed myself.
