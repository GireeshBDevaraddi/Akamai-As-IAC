variable "cld_activation_notification" {
  type = list(string)
}
variable "cld_activation_network" {
  type = string
}
variable "cld_activation_notes" {
  type = string
}
variable "cld_config_id" {
  type = string
}
variable "cld_config_version" {
  type = number
}
variable "cld_associated_properties" {
  type = list(string)
  default = []
}