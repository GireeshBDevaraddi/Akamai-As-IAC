resource "akamai_cloudlets_policy_activation" "cloudlets_activations" {
  policy_id             = var.config_id
  network               = var.release_network
  version               = var.config_version
  associated_properties = var.associated_properties
  timeouts {
    default = "1h"
  }
}