output "automation_connections" {
  description = "All automation_connection resources"
  value       = azurerm_automation_connection.automation_connections
}
output "automation_connections_automation_account_name" {
  description = "List of automation_account_name values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.automation_account_name]
}
output "automation_connections_description" {
  description = "List of description values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.description]
}
output "automation_connections_name" {
  description = "List of name values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.name]
}
output "automation_connections_resource_group_name" {
  description = "List of resource_group_name values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.resource_group_name]
}
output "automation_connections_type" {
  description = "List of type values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.type]
}
output "automation_connections_values" {
  description = "List of values values across all automation_connections"
  value       = [for k, v in azurerm_automation_connection.automation_connections : v.values]
}

