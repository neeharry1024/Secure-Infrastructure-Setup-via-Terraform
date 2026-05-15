
# Terraform Azure Secure Infrastructure

This project provisions a secure Azure Linux infrastructure using Terraform.

## Features

- Azure Resource Group
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Public IP
- Linux Virtual Machine
- Azure Bastion
- Azure Key Vault
- Azure Monitor Agent
- SSH Access
- Infrastructure as Code using Terraform

## Architecture

User → Azure Bastion → Linux VM

Monitoring:
Azure Monitor Agent → Log Analytics Workspace

## Prerequisites

- Terraform installed
- Azure CLI installed
- Azure subscription
- SSH key pair

## Project Structure

terraform-azure-secure-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
└── README.md

## Deployment Steps

### 1. Login to Azure

```bash
az login
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate Configuration

```bash
terraform validate
```

### 4. Preview Infrastructure

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

## Monitoring Verification

Run on VM:

```bash
systemctl status azuremonitoragent
```

Azure Monitor Log Query:

```kusto
Heartbeat
| sort by TimeGenerated desc
| take 10
```

## Security Features

- Secure SSH access
- NSG rules
- Azure Bastion connectivity
- Secrets stored in Azure Key Vault
- Azure Monitor integration

## Cleanup

```bash
terraform destroy
```

## Author

Neelam Saini
