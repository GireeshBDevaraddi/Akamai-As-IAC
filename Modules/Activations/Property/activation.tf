resource "akamai_property_activation" "ak_property_activation" {
  property_id                    = var.pm_property_id
  contact                        = var.pm_activation_notification
  network                        = var.pm_activation_network
  auto_acknowledge_rule_warnings = true
  note                           = var.pm_activation_notes
  version                        = var.pm_config_version
}