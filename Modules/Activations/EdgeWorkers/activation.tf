resource "akamai_edgeworkers_activation" "edgeworkers_activations" {
  edgeworker_id = var.ew_config_id
  network       = var.ew_activation_network
  version       = var.ew_config_version
}