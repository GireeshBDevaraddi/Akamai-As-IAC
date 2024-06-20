terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

data "akamai_appsec_configuration" "akamai_security_config" {
  name = var.appsec_config_name
}

resource "akamai_appsec_activations" "app_sec_activations" {
  config_id           = data.akamai_appsec_configuration.akamai_security_config.config_id
  version             = var.appsec_config_version
  notification_emails = var.appsec_activation_notification
  network             = var.appsec_activation_network
  note                = var.appsec_activation_notes
}
