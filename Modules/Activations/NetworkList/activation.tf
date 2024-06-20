terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

data "akamai_networklist_network_lists" "akamai_network_list" {
  name = var.nl_name
}

resource "akamai_networklist_activations" "networkList_activations" {
  network_list_id     = data.akamai_networklist_network_lists.akamai_network_list.id
  network             = var.nl_activation_network
  sync_point          = data.akamai_networklist_network_lists.akamai_network_list.sync_point
  notes               = var.nl_activation_notes
  notification_emails = var.nl_activation_notification
}