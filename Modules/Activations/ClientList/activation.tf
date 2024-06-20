terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

data "akamai_clientlist_lists" "client_list" {
  name = var.cl_config_name
}

resource "akamai_clientlist_activation" "clientList_activations" {
  list_id                 = length(data.akamai_clientlist_lists.client_list.list_ids) > 1 ? "" : data.akamai_clientlist_lists.client_list.list_ids[0]
  network                 = var.cl_activation_network
  version                 = length(data.akamai_clientlist_lists.client_list.lists) > 1 ? 1 : data.akamai_clientlist_lists.client_list.lists[0].version
  notification_recipients = var.cl_activation_notification
  comments                = var.cl_activation_notes
}