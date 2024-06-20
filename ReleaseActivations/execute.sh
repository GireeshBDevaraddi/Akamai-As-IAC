#!/bin/sh

rm -rf terraform.tfstate

terraform init
terraform plan -var-file=activations.tfvars
terraform apply -var-file=activations.tfvars -auto-approve

TFVARS_MODEL_FILE='release_activations = {
  "property_manager" = [],
  "app_sec"          = [],
  "client_List"      = [],
  "network_list"     = [],
  "lbm_list"         = [],
  "cloudlets_list"   = [],
  "edgeworkers_list" = []
}

release_notification = [""]
release_network      = "STAGING"
release_notes        = ""

/*
{
   config_id      = ""
   config_name    = ""
   config_version =
}

variable "release_activations" {
  type = map(list(object({
    config_id             = string
    config_name           = string
    config_version        = number
    associated_properties = optional(list(string))
  })))
}
*/
'

rm -rf activations.tfvars
touch activations.tfvars
echo "${TFVARS_MODEL_FILE}" > activations.tfvars