resource "akamai_networklist_activations" "networkList_activations" {
  network_list_id     = var.config_id
  network             = var.activation_network
  sync_point          = var.config_version
  notes               = var.activation_notes
  notification_emails = var.activation_notification
}