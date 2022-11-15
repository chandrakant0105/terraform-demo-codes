variable "resource_group" {
}
variable "location" {
}
variable "vnet" {
}
variable "address_space" {
}
variable "subnet" {
  default = ["subnet-1","subnet-2","subnet-3"]
}
variable "address_prefixes" {
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}
