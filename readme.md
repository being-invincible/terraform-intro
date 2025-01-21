# Terraform Introduction

This repository contains resources and examples for learning Terraform, an Infrastructure as Code (IaC) tool.

## Getting Started

### Prerequisites
- Terraform installed
- GCP CLI configured (if using GCP provider)
- Basic understanding of Terraform concepts

### Step 1 - Setup a service account in the cloud
In my case, I am setting up a GCP service acount for a demo project scope. Generate keys for auth and make the folder structure for saving the JSON keys.
![image](https://github.com/user-attachments/assets/123c5d0b-4d4b-41ad-b5b5-35466e09aec2)


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
Feel free to use this code to create/destroy a GCP bucket with Terraform, a really powerful way to do it. Also learn more about it using the resources below. 

## Extras
If possible try variables in Terraform. Create a few variables inside variable.tf to pass the dataset name to the main.tf file. After defining them, you can just call them in your main.tf file using var.<variale_name> cmd.

```tf
variable "location" {
  description = "Project location"
  default = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default = "demo_dataset"
}

variable "gcs_bucket_name" {
    description = "The name of my bucket"
    default = "valiant-airlock-448314-t1-terraform-demo"
}

variable "gcs_storage_class" {
    description = "The storage class of the bucket"
    default = "STANDARD"
}
```

## Resources
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [GCP Provider Documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs)
- [GCP Cloud Storage Bucket](https://registry.terraform.io/providers/wiardvanrij/ipv4google/latest/docs/resources/storage_bucket#example-usage---creating-a-private-bucket-in-standard-storage-in-the-eu-region-bucket-configured-as-static-website-and-cors-configurations)
