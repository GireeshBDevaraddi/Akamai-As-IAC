resource "akamai_appsec_activations" "app_sec_activations" {
  config_id           = var.config_id
  version             = var.config_version
  notification_emails = var.release_notification
  network             = var.release_network
  note                = var.release_notes
}