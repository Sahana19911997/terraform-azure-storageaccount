module "storagemodule" {
  source = "./modules/storageaccount"
  storageaccountname = "sahanastoragelkm"
  resourcegroupname = azurerm_resource_group.example.name
}

resource "azurerm_resource_group" "example" {
  name     = "TerraformRG"
  location = "East US"
}

output "storageidoutput" {
  value = module.storagemodule.storageid
  description = "The id of the storage account"
}

output "Storagetier" {
  value = module.storagemodule.StorageTier
}