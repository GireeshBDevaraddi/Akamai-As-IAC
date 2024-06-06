# Loops over all the inputted properties and activates
## Property Manager activations.

module "property_activation" {
  source   = "../Modules/Activations/Property"
  for_each = {
    for key, value in var.release_activations["property_manager"] : key => value
  }
  pm_activation_notes        = var.release_notes
  pm_activation_network      = var.release_network
  pm_activation_notification = var.release_notification
  pm_property_id             = each.value.config_id
  pm_config_version          = each.value.config_version
}

## Network List configs activations
module "networkList_activations" {
  source   = "../Modules/Activations/NetworkList"
  for_each = {
    for key, value in var.release_activations["network_list"] : key => value
  }
  nl_activation_network      = var.release_network
  nl_activation_notes        = var.release_notes
  nl_activation_notification = var.release_notification
  nl_config_id               = each.value.config_id
  nl_config_version          = each.value.config_version
}
## Application security configs activations.
module "app_security_activations" {
  source   = "../Modules/Activations/ApplicationSecurity"
  for_each = {
    for key, value in var.release_activations["app_sec"] : key => value
  }
  appsec_activation_notification = var.release_notification
  appsec_activation_network      = var.release_network
  appsec_activation_notes        = var.release_notes
  appsec_config_id               = each.value.config_id
  appsec_config_version          = each.value.config_version
}

## Client List configs activations
module "clientList_activations" {
  source   = "../Modules/Activations/ClientList"
  for_each = {
    for key, value in var.release_activations["client_List"] : key => value
  }
  cl_activation_network      = var.release_network
  cl_activation_notes        = var.release_notes
  cl_activation_notification = var.release_notification
  cl_config_id               = each.value.config_id
  cl_config_version          = each.value.config_version
}
# Cloudlets
## Application load balancer activations (LBM)
module "lbm_activations" {
  source   = "../Modules/Activations/LBM"
  for_each = {
    for key, value in var.release_activations["lbm_list"] : key => value
  }
  lbm_config_id          = each.value.config_id
  lbm_activation_network = var.release_network
  lbm_config_version     = each.value.config_version
}

## Cloudlets Policy Activations
module "cloudlets_activations" {
  source = "../Modules/Activations/Cloudlets"

  for_each = {
    for key, value in var.release_activations["cloudlets_list"] : key => value
  }
  cld_activation_network      = var.release_network
  cld_activation_notes        = var.release_notes
  cld_activation_notification = var.release_notification
  cld_config_version          = each.value.config_version
  cld_config_id               = each.value.config_id
  cld_associated_properties   = each.value.associated_properties
}

## Edge Workers Activations
module "edgeworkers_activations" {
  source   = "../Modules/Activations/EdgeWorkers"
  for_each = {
    for key, value in var.release_activations["edgeworkers_list"] : key => value
  }
  ew_activation_network   = var.release_network
  ew_config_id = each.value.config_id
  ew_config_version       = each.value.config_version
}
