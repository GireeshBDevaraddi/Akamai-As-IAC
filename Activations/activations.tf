# Loops over all the inputted properties and activates
## Property Manager activations.
resource "akamai_property_activation" "pm_activations" {
  for_each = {
    for key, value in var.release_activations["property_manager"] : key => value
  }
  version                        = each.value.config_version
  property_id                    = each.value.config_id
  contact                        = var.release_notification
  network                        = var.release_network
  auto_acknowledge_rule_warnings = true
  note                           = var.release_notes
}

## Application security configs activations.
resource "akamai_appsec_activations" "app_sec_activations" {
  for_each = {
    for key, value in var.release_activations["app_sec"] : key => value
  }
  config_id           = each.value.config_id
  version             = each.value.config_version
  notification_emails = var.release_notification
  network             = var.release_network
  note                = var.release_notes
}

## Client List configs activations
resource "akamai_clientlist_activation" "clientList_activations" {
  for_each = {
    for key, value in var.release_activations["client_List"] : key => value
  }
  list_id                 = each.value.config_id
  network                 = var.release_network
  version                 = each.value.config_version
  notification_recipients = var.release_notification
  comments                = var.release_notes
}

## Network List configs activations
resource "akamai_networklist_activations" "networkList_activations" {
  for_each = {
    for key, value in var.release_activations["network_list"] : key => value
  }
  network_list_id     = each.value.config_id
  network             = var.release_network
  sync_point          = each.value.config_version
  notes               = var.release_notes
  notification_emails = var.release_notification
}

# Cloudlets
## Application load balancer activations (LBM)
resource "akamai_cloudlets_application_load_balancer_activation" "lbm_activations" {
  for_each = {
    for key, value in var.release_activations["lbm_list"] : key => value
  }
  origin_id = each.value.config_id
  network   = var.release_network
  version   = each.value.config_version
  timeouts {
    default = "1h"
  }
}

## Cloudlets Policy Activations
resource "akamai_cloudlets_policy_activation" "cloudlets_activations" {
  for_each = {
    for key, value in var.release_activations["cloudlets_list"] : key => value
  }
  policy_id             = each.value.config_id
  network               = var.release_network
  version               = each.value.config_version
  associated_properties = each.value.associated_properties
  timeouts {
    default = "1h"
  }
}

## Edge Workers Activations
resource "akamai_edgeworkers_activation" "edgeworkers_activations" {
  for_each = {
    for key, value in var.release_activations["edgeworkers_list"] : key => value
  }
  edgeworker_id = each.value.config_id
  network       = var.release_network
  version       = each.value.config_version
}