resource "akamai_edgeworkers_activation" "edgeworkers_activations" {
  edgeworker_id = var.edgeworker_id
  network       = var.release_network
  version       = var.version
}