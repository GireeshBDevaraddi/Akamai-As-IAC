resource "akamai_property_activation" "ak_property_activation" {
  property_id                    = var.property_id
  contact                        = var.activation_notification
  network                        = var.activation_network
  auto_acknowledge_rule_warnings = true
  note                           = var.activation_notes
  version                        = var.version
  
}