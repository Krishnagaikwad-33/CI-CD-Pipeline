output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "public_subnets" {
  value = azurerm_subnet.public[*].id
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.winvm.id
}

output "vm_public_ip" {
  value = azurerm_public_ip.vm_public_ip.ip_address
}