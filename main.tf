data "azurerm_storage_account_blob_container_sas" "storage_account_blob_container_sas_lookup" {
  for_each = var.storage_account_blob_container_sas_lookup

  connection_string   = each.value.connection_string
  container_name      = each.value.container_name
  expiry              = each.value.expiry
  start               = each.value.start
  cache_control       = each.value.cache_control
  content_disposition = each.value.content_disposition
  content_encoding    = each.value.content_encoding
  content_language    = each.value.content_language
  content_type        = each.value.content_type
  https_only          = each.value.https_only
  ip_address          = each.value.ip_address

  dynamic "permissions" {
    for_each = each.value.permissions != null ? [each.value.permissions] : []
    content {
      add                     = permissions.value.add
      create                  = permissions.value.create
      delete                  = permissions.value.delete
      delete_version          = permissions.value.delete_version
      execute                 = permissions.value.execute
      find                    = permissions.value.find
      list                    = permissions.value.list
      move                    = permissions.value.move
      ownership               = permissions.value.ownership
      permissions             = permissions.value.permissions
      read                    = permissions.value.read
      set_immutability_policy = permissions.value.set_immutability_policy
      tags                    = permissions.value.tags
      write                   = permissions.value.write
    }
  }
}

