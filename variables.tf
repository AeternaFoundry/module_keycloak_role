variable "roles" {
  description = <<EOT
Map of roles, attributes below
Required:
    - name
    - realm_id
Optional:
    - attributes
    - client_id
    - composite_roles
    - description
    - import
EOT

  type = map(object({
    name            = string
    realm_id        = string
    attributes      = optional(map(string))
    client_id       = optional(string)
    composite_roles = optional(set(string))
    description     = optional(string)
    import          = optional(bool)
  }))
}

