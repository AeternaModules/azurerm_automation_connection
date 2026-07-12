output "automation_connections_automation_account_name" {
  description = "Map of automation_account_name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.automation_account_name }
}
output "automation_connections_description" {
  description = "Map of description values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.description }
}
output "automation_connections_name" {
  description = "Map of name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.name }
}
output "automation_connections_resource_group_name" {
  description = "Map of resource_group_name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.resource_group_name }
}
output "automation_connections_type" {
  description = "Map of type values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.type }
}
output "automation_connections_values" {
  description = "Map of values values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.values }
}

