output "automation_connections_id" {
  description = "Map of id values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_connections_automation_account_name" {
  description = "Map of automation_account_name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_connections_description" {
  description = "Map of description values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.description if v.description != null && length(v.description) > 0 }
}
output "automation_connections_name" {
  description = "Map of name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_connections_resource_group_name" {
  description = "Map of resource_group_name values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_connections_type" {
  description = "Map of type values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.type if v.type != null && length(v.type) > 0 }
}
output "automation_connections_values" {
  description = "Map of values values across all automation_connections, keyed the same as var.automation_connections"
  value       = { for k, v in azurerm_automation_connection.automation_connections : k => v.values if v.values != null && length(v.values) > 0 }
}

