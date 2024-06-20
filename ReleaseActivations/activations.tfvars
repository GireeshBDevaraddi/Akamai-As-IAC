release_activations = {
  "property_manager" = [],
  "app_sec"          = [],
  "client_List"      = [],
  "network_list"     = [],
  "lbm_list"         = [],
  "cloudlets_list"   = [],
  "edgeworkers_list" = []
}

release_notification = [""]
release_network      = "STAGING"
release_notes        = ""

/*
{
   config_id      = ""
   config_name    = ""
   config_version =
}

variable "release_activations" {
  type = map(list(object({
    config_id             = string
    config_name           = string
    config_version        = number
    associated_properties = optional(list(string))
  })))
}
*/

