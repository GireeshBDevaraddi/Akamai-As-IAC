
## Variables required for the release automation
variable "release_activations" {
  type = map(list(object({
    config_id             = string
    config_name           = string
    config_version        = number
    associated_properties = optional(list(string))
  })))
}
variable "release_notification" {
  type = list(string)
}
variable "release_network" {
  type = string
}
variable "release_notes" {
  type = string
}