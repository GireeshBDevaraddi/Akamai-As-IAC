/*
  Property Manager Activations
  Module Function : 
    - Loops over all the property-managers defined in activations.tfvars
    - Fetches the each property-manager detail and activates the property-manager
*/

module "property_activation" {
  source = "../Modules/Activations/Property"
  for_each = {
    for key, value in var.release_activations["property_manager"] : key => value
  }
  pm_activation_notes        = var.release_notes
  pm_activation_network      = var.release_network
  pm_activation_notification = var.release_notification
  pm_property_name           = each.value.config_name
  pm_config_version          = each.value.config_version
}

/*
  Application Security Activations
  Module Function : 
    - Loops over all the Application Security Configs defined in activations.tfvars
    - Fetches the each Application Security detail and activates the Application Security Policy
*/
module "app_security_activations" {
  source = "../Modules/Activations/ApplicationSecurity"
  for_each = {
    for key, value in var.release_activations["app_sec"] : key => value
  }
  appsec_activation_network      = var.release_network
  appsec_activation_notes        = var.release_notes
  appsec_activation_notification = var.release_notification
  appsec_config_name             = each.value.config_name
  appsec_config_version          = each.value.config_version
}

/*
  Network List Activations
  Module Function : 
    - Loops over all the Network-Lists defined in activations.tfvars
    - Fetches the each Network-List detail and activates the Network-List
*/
module "network_list_activation" {
  source = "../Modules/Activations/NetworkList"
  for_each = {
    for key, value in var.release_activations["network_list"] : key => value
  }
  nl_activation_network      = var.release_network
  nl_activation_notes        = var.release_notes
  nl_activation_notification = var.release_notification
  nl_name                    = each.value.config_name
}

/*
  Client List Activations
  Module Function : 
    - Loops over all the Client Lists defined in activations.tfvars
    - Fetches the each Client List detail and activates the Client List Policy
*/

module "clientList_activations" {
  source = "../Modules/Activations/ClientList"
  for_each = {
    for key, value in var.release_activations["client_List"] : key => value
  }
  cl_activation_network      = var.release_network
  cl_activation_notes        = var.release_notes
  cl_activation_notification = var.release_notification
  cl_config_name             = each.value.config_name
}

/*
  Cloudlets Activations
  Module Function : 
    - Loops over all the Cloudlets Configs defined in activations.tfvars
    - Fetches the each Cloudlets detail and activates the Cloudlets Policy
*/
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

/*
  Load Balancer Manager Activations
  Module Function : 
    - Loops over all the Load Balancer Manager Configs defined in activations.tfvars
    - Fetches the each Load Balancer Manager detail and activates the Load Balancer Manager Policy
*/
module "lbm_activations" {
  source = "../Modules/Activations/LBM"
  for_each = {
    for key, value in var.release_activations["lbm_list"] : key => value
  }
  lbm_config_id          = each.value.config_id
  lbm_activation_network = var.release_network
  lbm_config_version     = each.value.config_version
}

/*
  Edge-Worker Activations
  Module Function : 
    - Loops over all theEdge-Worker Configs defined in activations.tfvars
    - Fetches the each Edge-Worker detail and activates the Edge-Worker Policy
*/
module "edgeworkers_activations" {
  source = "../Modules/Activations/EdgeWorkers"
  for_each = {
    for key, value in var.release_activations["edgeworkers_list"] : key => value
  }
  ew_activation_network = var.release_network
  ew_config_id          = each.value.config_id
  ew_config_version     = each.value.config_version
}