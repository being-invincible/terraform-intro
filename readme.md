# Terraform Introduction

This repository contains resources and examples for learning Terraform, an Infrastructure as Code (IaC) tool.

## Getting Started

### Prerequisites
- Terraform installed
- GCP CLI configured (if using GCP provider)
- Basic understanding of Terraform concepts

### Step 1 - Setup a service account in the cloud
In my case, I am setting up a GCP service acount for a demo project scope. Generate keys for auth.

Make the folder structure for saving the json keys.

Use this in your commandline to provide the keys
```bash
export GOOGLE_CREDENTIALS="/Users/ha__sh/Documents/terraform-intro/my_keys/my_creds.json"
```
### Step 2 - Setup the terraform provider
Head on to the the GCP provider registry from terraform - 

Find the provider code and paste them in main.tf file. Once your project id and region is set, run the following command in your terminal for initialising terraform. This will also create some terraform files which may not be readable.

```bash
terraform init
```

### Step 3 - Create a standard bucket in GCP

Find the gcp cloud storage terraform code from the registry (modify if needed). Now plan and apply terraform (this will bring up a state file in your working directory). Don't forget to keep a unique name for the bucket (project name is always unique - use it wisely).

```bash
terraform plan
```

```bash
terraform apply
```

### Step 4 - Delete/Destroy the bucket in GCP
```bash
terraform destroy
```


## Usage
Follow the examples in each directory to learn different Terraform concepts.

## Resources
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

## License
This project is licensed under the MIT License - see the LICENSE file for details.