provider "azurerm" {
  
  resource_provider_registrations = var.azurerm_resource_provider_registrations

  storage_use_azuread = var.azurerm_storage_use_azuread

  features {
    api_management {
      purge_soft_delete_on_destroy = var.azurerm_features_api_management_purge_soft_delete_on_destroy
      recover_soft_deleted         = var.azurerm_features_api_management_recover_soft_deleted
    }

    app_configuration {
      purge_soft_delete_on_destroy = var.azurerm_features_app_configuration_purge_soft_delete_on_destroy
      recover_soft_deleted         = var.azurerm_features_app_configuration_recover_soft_deleted
    }

    application_insights {
      disable_generated_rule = var.azurerm_features_application_insights_disable_generated_rule
    }

    cognitive_account {
      purge_soft_delete_on_destroy = var.azurerm_features_cognitive_account_purge_soft_delete_on_destroy
    }

    key_vault {
      purge_soft_delete_on_destroy    = var.azurerm_features_key_vault_purge_soft_delete_on_destroy
      recover_soft_deleted_key_vaults = var.azurerm_features_key_vault_recover_soft_deleted_key_vaults
    }

    log_analytics_workspace {
      permanently_delete_on_destroy = var.azurerm_features_log_analytics_workspace_permanently_delete_on_destroy
    }

    machine_learning {
      purge_soft_deleted_workspace_on_destroy = var.azurerm_features_machine_learning_purge_soft_deleted_workspace_on_destroy
    }

    managed_disk {
      expand_without_downtime = var.azurerm_features_managed_disk_expand_without_downtime
    }

    netapp {
      delete_backups_on_backup_vault_destroy = var.azurerm_features_netapp_delete_backups_on_backup_vault_destroy
      prevent_volume_destruction             = var.azurerm_features_netapp_prevent_volume_destruction
    }

    postgresql_flexible_server {
      restart_server_on_configuration_value_change = var.azurerm_features_postgresql_flexible_server_restart_server_on_configuration_value_change
    }

    recovery_service {
      vm_backup_stop_protection_and_retain_data_on_destroy = var.azurerm_features_recovery_service_vm_backup_stop_protection_and_retain_data_on_destroy
      purge_protected_items_from_vault_on_destroy          = var.azurerm_features_recovery_service_purge_protected_items_from_vault_on_destroy
    }

    resource_group {
      prevent_deletion_if_contains_resources = var.azurerm_features_resource_group_prevent_deletion_if_contains_resources
    }

    # recovery_services_vault {
    #   recover_soft_deleted_backup_protected_vm = true
    # }

    subscription {
      prevent_cancellation_on_destroy = var.azurerm_features_subscription_prevent_cancellation_on_destroy
    }

    template_deployment {
      delete_nested_items_during_deletion = var.azurerm_features_template_deployment_delete_nested_items_during_deletion
    }

    virtual_machine {
      detach_implicit_data_disk_on_deletion = var.azurerm_features_virtual_machine_detach_implicit_data_disk_on_deletion
      delete_os_disk_on_deletion            = var.azurerm_features_virtual_machine_delete_os_disk_on_deletion
      graceful_shutdown                     = var.azurerm_features_virtual_machine_graceful_shutdown
      skip_shutdown_and_force_delete        = var.azurerm_features_virtual_machine_skip_shutdown_and_force_delete
    }

    virtual_machine_scale_set {
      force_delete                  = var.azurerm_features_virtual_machine_scale_set_force_delete
      roll_instances_when_required  = var.azurerm_features_virtual_machine_scale_set_roll_instances_when_required
      scale_to_zero_before_deletion = var.azurerm_features_virtual_machine_scale_set_scale_to_zero_before_deletion
    }
  }
}
