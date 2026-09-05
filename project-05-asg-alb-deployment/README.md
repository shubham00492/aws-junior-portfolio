# Project 05 — Auto Scaling + Application Load Balancer

Deployed a highly-available web tier on AWS: EC2 instances launched from a template, distributed across 3 Availability Zones, and load-balanced by an Application Load Balancer.

👉 **[View the live interactive page →](https://shubham00492.github.io/aws-junior-portfolio/project-05-asg-alb-deployment/)**

**Flow:** Browser → Application Load Balancer (HTTP :80) → Target Group → EC2 instances (Auto Scaling Group, min 2 / desired 3 / max 5, spread across us-east-1a / 1b / 1e)

## What this covers

- Launch template with a user data bootstrap script (installs and starts Apache automatically)
- Auto Scaling Group configured with multi-AZ subnets for fault tolerance
- Application Load Balancer created inline with the ASG, routing to a new target group
- EC2 health checks with a 40-second grace period
- Verified load distribution empirically — refreshing the ALB's DNS name returned responses from different EC2 instances

## Tech stack

AWS EC2 · Auto Scaling Groups · Application Load Balancer · Launch Templates · Target Groups · VPC (multi-AZ) · Apache HTTPD · Linux