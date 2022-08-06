## How to use

```
provider "azurerm" {
features {}
}

module "linux-vm" {
  source  = "spy86/linux-vm/azure"
  version = "1.0.5"
  compute_name = "a448379c"
  compute_size = "Standard_B2ms"
  compute_ssh_pub_key = "ssh-rsa XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  resource_group_name = "weu-test-rg"
  subnet_name = "Subnet_1"
  vnet_name = "dev-VirtualNetwork-weu-vnet"
  vnet_resource_group_name = "weu-test-rg"
  compute_offer = "0001-com-ubuntu-server-focal-daily"
  compute_publisher = "Canonical"
  compute_sku = "20_04-daily-lts"
  compute_ssh_login = "azureuser"
  compute_version = "20.04.202110010"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  storage_os_disk_disk_size_gb = "120"
  storage_os_managed_disk_type = "Standard_LRS"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}
```