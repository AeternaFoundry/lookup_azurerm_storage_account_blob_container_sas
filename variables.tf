variable "storage_account_blob_container_sas_lookup" {
  description = <<EOT
Map of storage_account_blob_container_sas_lookup, attributes below
Required:
    - connection_string
    - container_name
    - expiry
    - start
Optional:
    - cache_control
    - content_disposition
    - content_encoding
    - content_language
    - content_type
    - https_only
    - ip_address
    - permissions (block):
        - add (optional)
        - create (optional)
        - delete (optional)
        - delete_version (optional)
        - execute (optional)
        - find (optional)
        - list (optional)
        - move (optional)
        - ownership (optional)
        - permissions (optional)
        - read (optional)
        - set_immutability_policy (optional)
        - tags (optional)
        - write (optional)
EOT

  type = map(object({
    connection_string   = string
    container_name      = string
    expiry              = string
    start               = string
    cache_control       = optional(string)
    content_disposition = optional(string)
    content_encoding    = optional(string)
    content_language    = optional(string)
    content_type        = optional(string)
    https_only          = optional(bool)
    ip_address          = optional(string)
    permissions = optional(object({
      add                     = optional(bool)
      create                  = optional(bool)
      delete                  = optional(bool)
      delete_version          = optional(bool)
      execute                 = optional(bool)
      find                    = optional(bool)
      list                    = optional(bool)
      move                    = optional(bool)
      ownership               = optional(bool)
      permissions             = optional(bool)
      read                    = optional(bool)
      set_immutability_policy = optional(bool)
      tags                    = optional(bool)
      write                   = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_account_blob_container_sas_lookup : (
        length(v.connection_string) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_account_blob_container_sas_lookup : (
        length(v.container_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

