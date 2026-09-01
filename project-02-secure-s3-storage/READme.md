# Project 02 - Secure S3 Storage for Company Data

## Goal
Create a private and secure S3 bucket for company documents.

## Services Used
- Amazon S3
- Server-Side Encryption (SSE-S3)
- Versioning
- Block Public Access

## Steps I Did
1. Created private S3 bucket: `company-secure-docs-shubham`
2. Enabled Block All Public Access
3. Enabled Versioning to prevent accidental deletion
4. Enabled Default Encryption (AES-256)
5. Tested upload/download

## Security Features
- Block Public Access: ON
- Versioning Enabled
- Encryption Enabled
- No Public Policy

## Architecture Diagram
![Diagram](./secure_s3_architecture_diagram.jpg)