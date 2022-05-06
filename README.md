<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/virtual_machine) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_name"></a> [compute\_name](#input\_compute\_name) | Specifies the name of the Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_compute_offer"></a> [compute\_offer](#input\_compute\_offer) | Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"0001-com-ubuntu-server-focal-daily"` | no |
| <a name="input_compute_publisher"></a> [compute\_publisher](#input\_compute\_publisher) | Specifies the publisher of the image. | `string` | `"Canonical"` | no |
| <a name="input_compute_size"></a> [compute\_size](#input\_compute\_size) | Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions. | `string` | n/a | yes |
| <a name="input_compute_sku"></a> [compute\_sku](#input\_compute\_sku) | Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"20_04-daily-lts"` | no |
| <a name="input_compute_ssh_login"></a> [compute\_ssh\_login](#input\_compute\_ssh\_login) | Specifies the administrator account name to use for vm. | `string` | `"azureuser"` | no |
| <a name="input_compute_ssh_pub_key"></a> [compute\_ssh\_pub\_key](#input\_compute\_ssh\_pub\_key) | Specifies a collection of path and key\_data to be placed on the virtual machine. | `any` | n/a | yes |
| <a name="input_compute_version"></a> [compute\_version](#input\_compute\_version) | Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"20.04.202110010"` | no |
| <a name="input_data_disks_on_termination"></a> [data\_disks\_on\_termination](#input\_data\_disks\_on\_termination) | Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to false. | `string` | `true` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Specifies the name of the environment | `string` | `"dev"` | no |
| <a name="input_os_disk_on_termination"></a> [os\_disk\_on\_termination](#input\_os\_disk\_on\_termination) | Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to false. | `string` | `true` | no |
| <a name="input_os_profile_linux_config_disable_password_authentication"></a> [os\_profile\_linux\_config\_disable\_password\_authentication](#input\_os\_profile\_linux\_config\_disable\_password\_authentication) | Specifies whether password authentication should be disabled. | `string` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the resource group in which to create the resources. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_storage_os_create_option"></a> [storage\_os\_create\_option](#input\_storage\_os\_create\_option) | Specifies how the data disk should be created. Possible values are Attach, FromImage and Empty. | `string` | `"FromImage"` | no |
| <a name="input_storage_os_disk_caching"></a> [storage\_os\_disk\_caching](#input\_storage\_os\_disk\_caching) | Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite. | `string` | `"ReadWrite"` | no |
| <a name="input_storage_os_disk_disk_size_gb"></a> [storage\_os\_disk\_disk\_size\_gb](#input\_storage\_os\_disk\_disk\_size\_gb) | Specifies the size of the OS Disk in gigabytes. | `string` | `"30"` | no |
| <a name="input_storage_os_managed_disk_type"></a> [storage\_os\_managed\_disk\_type](#input\_storage\_os\_managed\_disk\_type) | Specifies the type of managed disk to create. Possible values are either Standard\_LRS, StandardSSD\_LRS, Premium\_LRS or UltraSSD\_LRS. | `string` | `"Standard_LRS"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet_resource_group_name"></a> [vnet\_resource\_group\_name](#input\_vnet\_resource\_group\_name) | The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_interface_ids"></a> [network\_interface\_ids](#output\_network\_interface\_ids) | ids of the vm nics provisoned. |
| <a name="output_network_interface_private_ip"></a> [network\_interface\_private\_ip](#output\_network\_interface\_private\_ip) | private ip addresses of the vm nics |
| <a name="output_vm_ids"></a> [vm\_ids](#output\_vm\_ids) | Virtual machine ids created. |
<!-- END_TF_DOCS -->