# Custom VPC, EC2, and RDS Terraform Project

This project provisions a custom AWS VPC, an EC2 instance, and an RDS MySQL database using Terraform. It manages SSH keys automatically and sets up secure networking and IAM policies.

## Features
- Custom VPC with public and private subnets
- EC2 instance with automated SSH key generation
- RDS MySQL instance
- Security groups for EC2 and RDS
- IAM policy for resource access

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- AWS CLI configured with credentials
- Sufficient AWS IAM permissions (VPC, EC2, RDS, IAM)

## Files
- `main.tf` – Provider, SSH key generation, and global resources
- `vpc.tf` – VPC and subnet definitions
- `ec2.tf` – EC2 instance and key pair
- `rds.tf` – RDS instance and subnet group
- `security_groups.tf` – Security group rules
- `variables.tf` – Input variables
- `output.tf` – Outputs
- `iam.tf` – IAM policy and attachment for resource access
- `.gitignore` – Ignores Terraform state and sensitive files

## Usage
1. **Clone the repository:**
   ```sh
   git clone <your-repo-url>
   cd custom_vpc_ec2_rds
   ```
2. **Set variables:**
   - Edit `variables.tf` or use a `terraform.tfvars` file to set values (e.g., `iam_user_name`).
3. **Initialize Terraform:**
   ```sh
   terraform init
   ```
4. **Review the plan:**
   ```sh
   terraform plan
   ```
5. **Apply the configuration:**
   ```sh
   terraform apply
   ```
6. **Access your resources:**
   - EC2 public IP and RDS endpoint will be available in Terraform outputs.

## Security Notes
- SSH keys are generated automatically and used for EC2 access.
- IAM permissions are required to manage resources.
- Never commit sensitive files or secrets to version control.

## Cleanup
To destroy all resources:
```sh
terraform destroy
```

## License
MIT
