terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

resource "akamai_cloudlets_application_load_balancer_activation" "lbm_activations" {

  origin_id = var.lbm_config_id
  network   = var.lbm_activation_network
  version   = var.lbm_config_version
  timeouts {
    default = "1h"
  }
}