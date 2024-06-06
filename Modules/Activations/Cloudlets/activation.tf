resource "akamai_cloudlets_policy_activation" "cloudlets_activations" {
  policy_id             = var.cld_config_id
  network               = var.cld_activation_network
  version               = var.cld_config_version
  associated_properties = var.cld_associated_properties
  timeouts {
    default = "1h"
  }
}