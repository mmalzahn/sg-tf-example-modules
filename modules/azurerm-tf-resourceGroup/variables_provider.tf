################################################
## Variables for the resourceprovider AzureRM ##
################################################

variable "azurerm_resource_provider_registrations" {
  type        = string
  default     = "core"
  description = "Values can be: core, extended, all, none"
}

variable "azurerm_storage_use_azuread" {
  type        = bool
  default     = false
  description = "Should the AzureRM Provider use AzureAD to connect to the Storage Blob & Queue APIs, rather than the SharedKey"
}

variable "azurerm_features_api_management_purge_soft_delete_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_api_management_recover_soft_deleted" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_app_configuration_purge_soft_delete_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_app_configuration_recover_soft_deleted" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_application_insights_disable_generated_rule" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_cognitive_account_purge_soft_delete_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_key_vault_purge_soft_delete_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_key_vault_recover_soft_deleted_key_vaults" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_log_analytics_workspace_permanently_delete_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_machine_learning_purge_soft_deleted_workspace_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_managed_disk_expand_without_downtime" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_netapp_delete_backups_on_backup_vault_destroy" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_netapp_prevent_volume_destruction" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_postgresql_flexible_server_restart_server_on_configuration_value_change" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_recovery_service_vm_backup_stop_protection_and_retain_data_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_recovery_service_purge_protected_items_from_vault_on_destroy" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_resource_group_prevent_deletion_if_contains_resources" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_subscription_prevent_cancellation_on_destroy" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_template_deployment_delete_nested_items_during_deletion" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_virtual_machine_detach_implicit_data_disk_on_deletion" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_virtual_machine_delete_os_disk_on_deletion" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_virtual_machine_graceful_shutdown" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_virtual_machine_skip_shutdown_and_force_delete" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_virtual_machine_scale_set_force_delete" {
  type        = bool
  default     = false
  description = "default: false"
}

variable "azurerm_features_virtual_machine_scale_set_roll_instances_when_required" {
  type        = bool
  default     = true
  description = "default: true"
}

variable "azurerm_features_virtual_machine_scale_set_scale_to_zero_before_deletion" {
  type        = bool
  default     = true
  description = "default: true"
}
