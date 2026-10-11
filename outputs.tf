output "roles_id" {
  description = "Map of id values across all roles, keyed the same as var.roles except keys with no id are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "roles_attributes" {
  description = "Map of attributes values across all roles, keyed the same as var.roles except keys with no attributes are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "roles_client_id" {
  description = "Map of client_id values across all roles, keyed the same as var.roles except keys with no client_id are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "roles_composite_roles" {
  description = "Map of composite_roles values across all roles, keyed the same as var.roles except keys with no composite_roles are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.composite_roles if v.composite_roles != null && length(v.composite_roles) > 0 }
}
output "roles_description" {
  description = "Map of description values across all roles, keyed the same as var.roles except keys with no description are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "roles_import" {
  description = "Map of import values across all roles, keyed the same as var.roles except keys with no import are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.import if v.import != null }
}
output "roles_name" {
  description = "Map of name values across all roles, keyed the same as var.roles except keys with no name are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "roles_realm_id" {
  description = "Map of realm_id values across all roles, keyed the same as var.roles except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_role.roles : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

