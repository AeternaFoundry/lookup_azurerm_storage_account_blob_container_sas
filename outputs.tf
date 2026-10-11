output "storage_account_blob_container_sas_lookup_id" {
  description = "Map of id values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_account_blob_container_sas_lookup_cache_control" {
  description = "Map of cache_control values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.cache_control if v.cache_control != null && length(v.cache_control) > 0 }
}
output "storage_account_blob_container_sas_lookup_connection_string" {
  description = "Map of connection_string values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "storage_account_blob_container_sas_lookup_container_name" {
  description = "Map of container_name values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.container_name if v.container_name != null && length(v.container_name) > 0 }
}
output "storage_account_blob_container_sas_lookup_content_disposition" {
  description = "Map of content_disposition values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.content_disposition if v.content_disposition != null && length(v.content_disposition) > 0 }
}
output "storage_account_blob_container_sas_lookup_content_encoding" {
  description = "Map of content_encoding values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.content_encoding if v.content_encoding != null && length(v.content_encoding) > 0 }
}
output "storage_account_blob_container_sas_lookup_content_language" {
  description = "Map of content_language values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.content_language if v.content_language != null && length(v.content_language) > 0 }
}
output "storage_account_blob_container_sas_lookup_content_type" {
  description = "Map of content_type values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "storage_account_blob_container_sas_lookup_expiry" {
  description = "Map of expiry values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.expiry if v.expiry != null && length(v.expiry) > 0 }
}
output "storage_account_blob_container_sas_lookup_https_only" {
  description = "Map of https_only values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.https_only if v.https_only != null }
}
output "storage_account_blob_container_sas_lookup_ip_address" {
  description = "Map of ip_address values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "storage_account_blob_container_sas_lookup_permissions" {
  description = "Map of permissions values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => one(v.permissions) if v.permissions != null && length(v.permissions) > 0 }
}
output "storage_account_blob_container_sas_lookup_sas" {
  description = "Map of sas values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.sas if v.sas != null && length(v.sas) > 0 }
  sensitive   = true
}
output "storage_account_blob_container_sas_lookup_start" {
  description = "Map of start values across all storage_account_blob_container_sas_lookup, keyed the same as var.storage_account_blob_container_sas_lookup"
  value       = { for k, v in data.azurerm_storage_account_blob_container_sas.storage_account_blob_container_sas_lookup : k => v.start if v.start != null && length(v.start) > 0 }
}

