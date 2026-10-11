variable "cloud_key_manager_secrets_lookup" {
  description = <<EOT
Map of cloud_key_manager_secrets_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

