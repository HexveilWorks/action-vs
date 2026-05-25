
resource-group={
  "rg1" = {
    rg_name  = "rg-terraform-01"
    location = "newzealandnorth"
  }
}

storage_account={
  "stg1" = {
    stg_name                 = "kimstorezeenest"
    resource_group_name      = "rg-terraform-01"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet={
  "vnet1" = {
    vnet_name           = "vnet-terraform-01"
    resource_group_name = "rg-terraform-01"
    location            = "newzealandnorth"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet={
  "subnet1" = {
    subnet_name          = "subnet-terraform-01"
    resource_group_name  = "rg-terraform-01"
    virtual_network_name = "vnet-terraform-01"
    address_prefixes     = ["10.0.1.0/24"]
  }
}