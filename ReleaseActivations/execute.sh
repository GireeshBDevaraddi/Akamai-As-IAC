#!/bin/sh

rm -rf terraform.tfstate

terraform init
terraform plan -var-file=activations.tfvars -out terraformPlan
terraform apply -var-file=activations.tfvars -auto-approve