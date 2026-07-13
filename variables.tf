variable "automation_connections" {
  description = <<EOT
Map of automation_connections, attributes below
Required:
    - automation_account_name
    - name
    - resource_group_name
    - type
    - values
Optional:
    - description
EOT

  type = map(object({
    automation_account_name = string
    name                    = string
    resource_group_name     = string
    type                    = string
    values                  = map(string)
    description             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_connections : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_connections : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_connections : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_connections : (
        length(v.type) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

