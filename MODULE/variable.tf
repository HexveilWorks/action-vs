
variable "resource-group" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}


variable "storage_account" {
  type = map(object({

    stg_name                 = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}


variable "vnet" {
  type = map(object({
    vnet_name           = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}


variable "subnet" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}