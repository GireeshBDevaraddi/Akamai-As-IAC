resource "akamai_appsec_activations" "app_sec_activations" {
  config_id           = var.appsec_config_id
  version             = var.appsec_config_version
  notification_emails = var.appsec_activation_notification
  network             = var.appsec_activation_network
  note                = var.appsec_activation_notes
}