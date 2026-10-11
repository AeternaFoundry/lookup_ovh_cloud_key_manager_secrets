output "cloud_key_manager_secrets_lookup_secrets" {
  description = "Map of secrets values across all cloud_key_manager_secrets_lookup, keyed the same as var.cloud_key_manager_secrets_lookup except keys with no secrets are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secrets.cloud_key_manager_secrets_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}
output "cloud_key_manager_secrets_lookup_service_name" {
  description = "Map of service_name values across all cloud_key_manager_secrets_lookup, keyed the same as var.cloud_key_manager_secrets_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secrets.cloud_key_manager_secrets_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

