<div align="center">

# 🪟 Terraform Windows Setup Guide

## Complete Installation and Configuration Guide for Windows

### VishwaTech Labs

### By Vishwanath Gowda H

[![Terraform](https://img.shields.io/badge/Terraform-v1.x-7B42BC?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows)](https://www.microsoft.com/windows)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)](https://aws.amazon.com/)
[![DevOps](https://img.shields.io/badge/DevOps-Learning-blue?style=for-the-badge)](#)

</div>

<img width="1554" height="1037" alt="image" src="https://github.com/user-attachments/assets/6ff05ab1-7451-4816-91ef-3f4d7022e77b" />

---

# 📖 Overview

This guide covers:

- Downloading Terraform
- Installing Terraform on Windows
- Configuring Environment Variables
- Verifying Installation
- Installing AWS CLI
- Configuring AWS Credentials
- Validating Terraform Version
- Validating AWS CLI Version
- Creating Your First Terraform Project

---

# 🏗 Prerequisites

- Windows 10 or Windows 11
- Administrator Access
- AWS Account
- Internet Connection

---

# Step 1 - Download Terraform

Official Terraform Downloads:

https://developer.hashicorp.com/terraform/downloads

Download:

```text
Windows AMD64
``

Extract ZIP File

Example:

```text
C:\Terraform
```

You should see:

```text
C:\Terraform\terraform.exe
```

---

# Step 2 - Configure Environment Variable

Open:

```text
Start Menu
   ↓
Environment Variables
   ↓
Edit System Environment Variables
```

Click:

```text
Environment Variables
```

Under:

```text
System Variables
```

Select:

```text
Path
```

Click:

```text
Edit
```

Add:

```text
C:\Terraform
```

Save Changes.

---

# Step 3 - Verify Terraform Installation

Open Command Prompt:

```cmd
terraform version
```

Expected:

```text
Terraform v1.x.x
```

Check Path:

```cmd
where terraform
```

Expected:

```text
C:\Terraform\terraform.exe
```

---

# Step 4 - Install AWS CLI

Download:

https://aws.amazon.com/cli/

Install AWS CLI MSI Installer.

Verify:

```cmd
aws --version
```

Expected:

```text
aws-cli/2.x.x
```

---

# Step 5 - Configure AWS Credentials

Run:

```cmd
aws configure
```

Enter:

```text
AWS Access Key ID

AWS Secret Access Key

Region

Output Format
```

Example:

```text
ap-south-1
json
```

---

# Step 6 - Verify AWS Configuration

```cmd
aws sts get-caller-identity
```

Expected:

```json
{
  "Account": "123456789012",
  "Arn": "...",
  "UserId": "..."
}
```

---

# Step 7 - Create Terraform Project

Folder:

```text
terraform-aws-demo
```

Files:

```text
provider.tf
main.tf
output.tf
```

---

# provider.tf

```hcl
terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

}

provider "aws" {

  region = "ap-south-1"

}
```

---

# main.tf

```hcl
resource "aws_s3_bucket" "demo" {

  bucket = "replace-with-unique-bucket-name"

}
```

---

# output.tf

```hcl
output "bucket_name" {

  value = aws_s3_bucket.demo.bucket

}
```

---

# Step 8 - Terraform Workflow

```text
terraform fmt
      ↓
terraform validate
      ↓
terraform init
      ↓
terraform plan
      ↓
terraform apply
      ↓
terraform destroy
```

---

# Commands

Format:

```cmd
terraform fmt
```

Validate:

```cmd
terraform validate
```

Initialize:

```cmd
terraform init
```

Plan:

```cmd
terraform plan
```

Apply:

```cmd
terraform apply
```

Destroy:

```cmd
terraform destroy
```

---

# Validation Checklist

✅ Terraform Installed

✅ Environment Variable Configured

✅ Terraform Version Verified

✅ AWS CLI Installed

✅ AWS CLI Version Verified

✅ AWS Credentials Configured

✅ AWS Authentication Verified

✅ Terraform Project Created

✅ Terraform Apply Successful

---

# Useful Links

Terraform Documentation

https://developer.hashicorp.com/terraform/docs

Terraform Downloads

https://developer.hashicorp.com/terraform/downloads

AWS CLI Documentation

https://docs.aws.amazon.com/cli/

AWS Console

https://console.aws.amazon.com/

---

# 👨‍💻 Author

## Vishwanath Gowda H

### VishwaTech Labs

Terraform • AWS • Azure • GCP • DevOps

---

# 🚀 Happy Learning

Star ⭐ the repository if it helped you.
