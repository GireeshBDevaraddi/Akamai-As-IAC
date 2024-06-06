resource "akamai_clientlist_activation" "clientList_activations" {
  list_id                 = var.cl_config_id
  network                 = var.cl_activation_network
  version                 = var.cl_config_version
  notification_recipients = var.cl_activation_notification
  comments                = var.cl_activation_notes
}