resource "akamai_networklist_activations" "networkList_activations" {
  network_list_id     = var.nl_config_id
  network             = var.nl_activation_network
  sync_point          = var.nl_config_version
  notes               = var.nl_activation_notes
  notification_emails = var.nl_activation_notification
}