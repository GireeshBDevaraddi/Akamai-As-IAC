resource "akamai_clientlist_activation" "clientList_activations" {
  list_id                 = var.config_id
  network                 = var.release_network
  version                 = var.config_version
  notification_recipients = var.release_notification
  comments                = var.release_notes
}