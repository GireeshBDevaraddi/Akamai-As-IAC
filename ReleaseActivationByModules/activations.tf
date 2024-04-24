# Loops over all the inputted properties and activates
## Property Manager activations.

module "property_activation" {
  source = "../Modules/Activations/Property"
  for_each = {
    for key, value in var.release_activations["property_manager"] : key => value
  }
  activation_notes = var.release_notes
  activation_network  = var.release_network
  activation_notification = var.release_notification
  property_id = each.value.config_id
  version = each.value.config_version
}

## Application security configs activations.
module "app_security_activations" {
  source = "../Modules/Activations/ApplicationSecurity"
  for_each = {
    for key, value in var.release_activations["app_sec"] : key => value
  }
  activation_notification =  var.release_notification
  activation_network = var.release_network
  activation_notes  =  var.release_notes
  config_id = each.value.config_id
  config_version = each.value.config_version
}

## Client List configs activations
module "clientList_activations" {
  source = "../Modules/Activations/ClientList"
  for_each = {
    for key, value in var.release_activations["client_List"]: key => value
  }
  activation_network = var.release_network
  activation_notes = var.release_notes
  activation_notification = var.release_notification
  config_id = each.value.config_id
  config_version = each.value.config_version
}
## Network List configs activations
module "networkList_activations" {
  source = "../Modules/Activations/NetworkList"
  for_each = {
    for key, value in var.release_activations["network_list"]: key => value
  }
  activation_network = var.release_network
  activation_notes = var.release_notes
  activation_notification = var.release_notification
  config_id = each.value.config_id
  config_version = each.value.config_version
}
# Cloudlets
## Application load balancer activations (LBM)
module "lbm_activations" {
  source = "../Modules/Activations/Cloudlets/LBM"
  for_each = { 
    for key, value in var.release_activations["lbm_list"]: key => value
   }
  config_id = each.value.config_id
  activation_network = var.release_network
  config_version = each.value.config_version
}

## Cloudlets Policy Activations
module "cloudlets_activations" {
  source = "../Modules/Activations/Cloudlets"

  for_each = {
    for key, value in var.release_activations["cloudlets_list"]: key => value
  }
  activation_network = var.release_network
  activation_notes = var.release_notes
  activation_notification = var.release_notification
  config_version = each.value.config_version
  config_id = each.value.config_id
  associated_properties = each.value.associated_properties
}

## Edge Workers Activations
module "edgeworkers_activations" {
  source = "../Modules/Activations/EdgeWorkers"
   for_each = {
    for key, value in var.release_activations["edgeworkers_list"]: key => value
  }
  activation_network = var.release_network
  edgeworker_id = each.value.config_id
  version = each.value.config_version
}
