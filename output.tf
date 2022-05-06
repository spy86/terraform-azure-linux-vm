output "vm_ids" {
  description = "Virtual machine ids created."
  value       = "${azurerm_virtual_machine.main.*.id}"
  sensitive = false
}
output "network_interface_ids" {
  description = "ids of the vm nics provisoned."
  value       = "${azurerm_network_interface.main.*.id}"
  sensitive = false
}
output "network_interface_private_ip" {
  description = "private ip addresses of the vm nics"
  value       = "${azurerm_network_interface.main.*.private_ip_address}"
  sensitive = false
}