resource "akamai_property_activation" "ak_property_activation" {
  property_id                    = var.property_id
  contact                        = var.release_notification
  network                        = var.release_network
  auto_acknowledge_rule_warnings = true
  note                           = var.release_notes
  version                        = var.version
  
}