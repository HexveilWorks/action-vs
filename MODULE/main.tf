
module "rg" {
    source = "../RESOURCES/RESOURCE-GROUP"
    resource-group = var.resource-group 
}

module "stg" {
    depends_on = [ module.rg ]
    source = "../RESOURCES/STORAGE-ACCOUNT"
    storage_account = var.storage_account
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../RESOURCES/VIRTUAL-NETWORK"
    vnet = var.vnet
}

module "subnet" {
    depends_on = [ module.rg, module.vnet ]
    source = "../RESOURCES/SUBNET"
    subnet = var.subnet
}

