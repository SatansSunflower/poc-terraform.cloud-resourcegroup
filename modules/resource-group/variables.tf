variable "name" {
  type = string
  description = "(Required) Name of the Resource Group"
}   

variable "location" {
  type = string
  description = "(Optional) Location of Resource Group"
  default = "West Europe"
}
