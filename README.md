# Multi Region Terraform with Azure Remote State

Navigate to the `terraform` directory

```bash
cd terraform
```

Copy `backend.sample.tfvars` to `backend.tfvars` and replace with your resource group, storage account and container to store your remote terraform state.

```terraform
resource_group_name  = "<RESOURCE_GROUP_NAME>"
storage_account_name = "<STORAGE_ACCOUNT_NAME>"
container_name       = "<CONTAINER_NAME>"
key                  = "terraform.tfstate"
```

> The key names here are required based on the `azurerm` remote state provider


Copy `variables.sample.tfvars` to `variables.tfvars` and replace with your settings.

```
BUSINESS_UNIT = "az"
APP_NAME = "tf"
```

> It is recommended to use short names since these abbreviations will be used as part of the naming conventions on your deployed resources

Ensure your are logged in to Azure via the CLI

```bash
az login
az login account set -s <SUBSCRIPTION_ID>
```

Initialize your project

```bash
terraform init -backend-config backend.tfvars
```

Create your workspaces to keep terraform state separate per environment

```bash
terraform workspace new dev
terraform workspace new test
terraform workspace new prod
```

Select the workspace/environment you want to deploy to

```bash
terraform workspace select dev
```

Plan your deployment

```bash
terraform plan -out out.tfplan -var-file variables.tfvars
```

Review your plan and deploy

```bash
terraform apply out.tfplan
```
