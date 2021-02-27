# Multi Region Terraform with Azure Remote State

Copy `terraform/backend.sample.tfvars` to `terraform/backend.tfvars` and replace with your resource group, storage account and container to store your remote terraform state.

```terraform
resource_group_name  = "<RESOURCE_GROUP_NAME>"
storage_account_name = "<STORAGE_ACCOUNT_NAME>"
container_name       = "<CONTAINER_NAME>"
key                  = "terraform.tfstate"
```

Copy `terraform/variables.sample.tfvars` to `terraform/variables.tfvars` and replace with your settings.

```
BUSINESS_UNIT = "contoso"
APP_NAME = "processing"
```

Ensure your are logged in to Azure via the CLI

```bash
az login
az login account set -s <SUBSCRIPTION_ID>
```

Initialize your project

```bash
terraform init -backend-config terraform/backend.tfvars
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
terraform plan -out out.tfplan -var-file terraform/variables.tfvars
```

Review your plan and deploy

```bash
terraform apply out.tfplan
```
