resource "akamai_appsec_activations" "app_sec_activations" {
  config_id           = var.config_id
  version             = var.config_version
  notification_emails = var.activation_notification
  network             = var.activation_network
  note                = var.activation_notes
}