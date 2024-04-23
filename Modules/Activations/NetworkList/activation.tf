resource "akamai_networklist_activations" "networkList_activations" {
  network_list_id     = var.config_id
  network             = var.release_network
  sync_point          = var.config_version
  notes               = var.release_notes
  notification_emails = var.release_notification
}