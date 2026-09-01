# Project 03 - Custom VPC Creation (Manual)

## Goal
Create a custom VPC from scratch without using default VPC.

## Services Used
- Amazon VPC
- Subnets (Public & Private)
- Internet Gateway
- Route Tables
- Security Groups

## Architecture I Built
VPC: 10.0.0.0/16
- Public Subnet: 10.0.1.0/24 (us-east-1a)
- Private Subnet: 10.0.2.0/24 (us-east-1b)
- IGW attached for public internet access

## Steps I Did
1. Created VPC
2. Created 2 Subnets
3. Created and Attached Internet Gateway
4. Created Public Route Table with route 0.0.0.0/0 -> IGW
5. Associated Public Subnet with Public Route Table

## Diagram
Internet -> IGW -> Public Subnet -> Route Table

## What I Learned
- What is VPC and why we need custom VPC
- Public vs Private Subnet difference
- How Internet Gateway works
- Route Tables explained