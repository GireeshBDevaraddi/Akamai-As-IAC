resource "akamai_cloudlets_application_load_balancer_activation" "lbm_activations" {
  
  origin_id = var.config_id
  network   = var.activation_network
  version   = var.config_version
  timeouts {
    default = "1h"
  }
}