variable "resource_group" {
  default = "demo-rg"
}
variable "location" {
  default = "West Europe"
}
variable "vnet" {
  default = "demo-vnet"
}
variable "address_space" {
  default = "10.0.0.0/16"
}
variable "subnet" {
  default = ["subnet-1","subnet-2","subnet-3"]
}
variable "address_prefixes" {
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}
