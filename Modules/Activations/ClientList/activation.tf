resource "akamai_clientlist_activation" "clientList_activations" {
  list_id                 = var.config_id
  network                 = var.activation_network
  version                 = var.config_version
  notification_recipients = var.activation_notification
  comments                = var.activation_notes
}