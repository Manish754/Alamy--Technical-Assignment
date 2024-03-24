# Alamy--Technical-Assignment
# Infrastructure Deployment and Application Deployment

## Terraform

This section explains the Terraform files structure and how to deploy the AWS infrastructure.

### Terraform Structure

- `main.tf`: Main configuration file for AWS resources.
-  security_group.tf: Security configuration  file for AWS resources and change and manage 
- `variables.tf`: Declares input variables.  
- `modules/`: Directory containing reusable Terraform modules for VPC, IAM, EC2, and Security Group.
- `terraform.tfvars`: Input variables file (not included in repo for security reasons).
- `README.md`: Instructions for Terraform deployment.

### Deployment Process

1. Install Terraform.
2. Configure AWS credentials.
3. Initialize Terraform: `terraform init`.
4. Plan the deployment: `terraform plan`.
5. Apply changes: `terraform apply`.

## Kubernetes

This section explains the Kubernetes file structure and deployment process.

### Kubernetes Structure

- `deployment.yaml`: Kubernetes deployment configuration for the lightweight application.
- `service.yaml`: Service configuration for accessing the application.
- `rbac.yaml`: RBAC configuration for Kubernetes.
- `README.md`: Instructions for Kubernetes deployment.

### Deployment Process

1. Install kubectl and set up Kubernetes cluster.
2. Apply RBAC configuration: `kubectl apply -f rbac.yaml`.
3. Deploy application deployment: `kubectl apply -f deployment.yaml`.
4. Deploy service: `kubectl apply -f service.yaml`.

