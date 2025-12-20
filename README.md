
# Terraform Azure Infrastructure Pipeline

## Overview
This repository contains a modular Terraform configuration for deploying infrastructure to Azure Cloud using `for_each` and nested maps for dynamic resource management.

## Project Structure
```
.
├── modules/                 # Reusable resource modules
│   ├── module-1/
│   ├── module-2/
│   └── ...
├── env/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   └── qa/
│       ├── main.tf
│       ├── terraform.tfvars
│       └── variables.tf
└── README.md
```

## Key Features
- **for_each**: Dynamic resource provisioning using nested maps
- **Child Modules**: Reusable resource blocks for consistent infrastructure
- **Environment Isolation**: Separate `dev` and `qa` directories with environment-specific configurations
- **tfvars**: Externalized variable values for easy configuration management

## Usage

### Deploy to Dev
```bash
cd env/dev
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply
```

### Deploy to QA
```bash
cd env/qa
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply
```

## Module Structure
Modules contain reusable resource blocks with `for_each` loops, called from environment-specific `main.tf` files with values provided via `terraform.tfvars`.

## Prerequisites
- Terraform >= 1.0
- Azure CLI configured
- Valid Azure subscription
