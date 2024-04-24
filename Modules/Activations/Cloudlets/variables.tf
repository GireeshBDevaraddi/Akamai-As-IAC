variable "activation_notification" {
  type = list(string)
}
variable "activation_network" {
  type = string
}
variable "activation_notes" {
  type = string
}
variable "config_id" {
  type = string
}
variable "config_version" {
  type = number
}
variable "associated_properties" {
  type = optional(list(string))
}