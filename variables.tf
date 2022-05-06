############################
#Common vars
############################
variable "environment" {
  description = "Specifies the name of the environment"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "compute_ssh_login" {
  description = "Specifies the administrator account name to use for vm."
  type = string
  default = "azureuser"
}
variable "compute_ssh_pub_key" {
  description = "Specifies a collection of path and key_data to be placed on the virtual machine."
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
############################
#Resource gropus vars
############################
variable "resource_group_location" {
  description = "The location of the resource group in which to create the resources. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources. Changing this forces a new resource to be created."
  type = string
}
############################
#COMPUTE vars
############################
variable "compute_name" {
  description = "Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
  type = string
}
variable "compute_publisher" {
  description = "Specifies the publisher of the image."
  type = string
  default = "Canonical"
}
variable "compute_offer" {
  description = "Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
  default = "0001-com-ubuntu-server-focal-daily"
}
variable "compute_sku" {
  description = "Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
  default = "20_04-daily-lts"
}
variable "compute_version" {
  description = "Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created."
  type = string
  default = "20.04.202110010"
}
variable "compute_size" {
  description = "Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions."
  type = string
}
variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "vnet_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "vnet_resource_group_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "storage_os_disk_caching" {
  description = "Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
  type = string
  default = "ReadWrite"
}
variable "storage_os_create_option" {
  description = "Specifies how the data disk should be created. Possible values are Attach, FromImage and Empty."
  type = string
  default = "FromImage"
}
variable "storage_os_managed_disk_type" {
  description = "Specifies the type of managed disk to create. Possible values are either Standard_LRS, StandardSSD_LRS, Premium_LRS or UltraSSD_LRS."
  type = string
  default = "Standard_LRS"
}
variable "os_disk_on_termination" {
  description = "Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to false."
  type = string
  default = true
}
variable "data_disks_on_termination" {
  description = "Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to false."
  type = string
  default = true
}
variable "storage_os_disk_disk_size_gb" {
  description = "Specifies the size of the OS Disk in gigabytes."
  type = string
  default = "30"
}
variable "os_profile_linux_config_disable_password_authentication" {
  description = "Specifies whether password authentication should be disabled."
  type = string
  default = true
}


