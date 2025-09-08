# Tools I used
1)	AWS Cloud
2)	Terraform – Infrastructure as code 
3)	GitHub Action – Automating CI/CD pipeline
4)	Helm – Kubernetes Package Manager
5)	EKS Cluster – Manage node groups
6)	Prometheus – Monitoring and Metrics
7)	Grafana – Data visualization and Dashboards
8)	AlertManager – Configuring Alert and Notification
9)	Docker - Contanarization
10)	ECR  - AWS elastic container registry

# Approach 
Scalability – Each microservices scale independently.
Reusability – Helm charts and CI/CD pipeline are shared across microservices
Flexibility – Infrastructure changes and microservices update are handle separately
Maintainability – You only need to update the ci/cd process in one place, not across 50 different repositories. 

# Common Infrastructure

This repository provides the infrastructure setup for deploying microservices on an AWS EKS (Elastic Kubernetes Service) cluster. It focuses on best practices for organizing repositories and managing infrastructure components like VPC, ACM, EKS, Prometheus, Grafana, and Alert Manager. The goal is to separate concerns for scalability and maintainability.

## Repository Structure

The repository is divided into multiple folders based on the components needed to deploy and manage microservices on EKS. Each folder represents a specific part of the infrastructure and is designed for modularity and independence.

### Folder Breakdown

1. **`vpc/`**  
   Contains Terraform code for provisioning the Virtual Private Cloud (VPC), including subnets, security groups, and internet gateway configurations.

2. **`acm/`**  
   Manages AWS Certificate Manager (ACM) for SSL/TLS certificates, ensuring secure access to microservices via browsers.

3. **`eks/`**  
   Contains Terraform configuration for creating the EKS cluster.

4. **`monitoring/`**  
   Houses the Terraform configurations for deploying Prometheus, Grafana, and Alert Manager, separated for clear management and easy modification without affecting the rest of the infrastructure.

### **Modular Infrastructure Design**

This repository follows a modular approach:
- Each component (VPC, ACM, EKS, monitoring) is managed in its own folder.
- This separation ensures that changes made to the VPC do not affect the EKS cluster, and vice versa.
- You can update or modify a specific component without impacting others, adhering to best practices for infrastructure as code.

### **Resource Naming Convention**

- A consistent naming convention is followed for resources to ensure clarity and avoid conflicts.
- Resource names are structured to include identifiers for the environment, region, and resource type.

## Terraform Best Practices

- **State Management**: We use an S3 bucket to manage Terraform state files, ensuring state is securely stored and shared across multiple team members.
- **Modules**: Terraform modules are used to encapsulate reusable logic, ensuring that infrastructure components can be replicated or modified easily.
- **GitHub Workflows**:
  - **PR Workflow**: Automatically triggers the validation and review of Terraform code whenever a pull request (PR) is created or updated.
  - **CD Workflow**: Automatically detects changes in specific folders and triggers the deployment of those components.

# Security and access Management:
1)	Security measures are incorporated, including the use of ACM for SSL certificates and proper IAM roles and policy for cluster access.
2)	The setup includes creating a secure load balancer to manage incoming traffic for microservices.

