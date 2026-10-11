data "ovh_cloud_key_manager_secrets" "cloud_key_manager_secrets_lookup" {
  for_each = var.cloud_key_manager_secrets_lookup

  service_name = each.value.service_name
}

