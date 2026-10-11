resource "keycloak_role" "roles" {
  for_each = var.roles

  name            = each.value.name
  realm_id        = each.value.realm_id
  attributes      = each.value.attributes
  client_id       = each.value.client_id
  composite_roles = each.value.composite_roles
  description     = each.value.description
  import          = each.value.import
}

