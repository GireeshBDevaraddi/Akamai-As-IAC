terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

data "akamai_property" "pm_filtered_property" {
  name = var.pm_property_name
}

resource "akamai_property_activation" "ak_property_activation" {
  property_id                    = data.akamai_property.pm_filtered_property.property_id
  contact                        = var.pm_activation_notification
  network                        = var.pm_activation_network
  auto_acknowledge_rule_warnings = true
  note                           = var.pm_activation_notes
  version                        = var.pm_config_version
}