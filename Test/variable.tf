variable "aks_config" {
  type = map(any)
  default = {
    address_space                    = "10.1.0.0/16"
    subnet_prefixes                  = ["10.1.0.0/24"]
    subnet_names                     = ["subnet1"]
    resource_group_name              = example.name
    client_id                        = "your-service-principal-client-appid"
    client_secret                    = "your-service-principal-client-password"
    kubernetes_version               = "1.19.6"
    orchestrator_version             = "1.19.6"
    prefix                           = "farrukh" #This should be variablized and changed
    network_plugin                   = "azure"
    vnet_subnet_id                   = module.network.vnet_subnets[0]
    os_disk_size_gb                  = 50
    sku_tier                         = "Paid" # defaults to Free
    enable_role_based_access_control = true
    rbac_aad_admin_group_object_ids  = [data.azuread_group.aks_cluster_admins.id]
    rbac_aad_managed                 = true
    private_cluster_enabled          = true # default value
    enable_http_application_routing  = true
    enable_azure_policy              = true
    enable_auto_scaling              = true
    agents_min_count                 = 1
    agents_max_count                 = 2
    agents_count                     = null # Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes.
    agents_max_pods                  = 100
    agents_pool_name                 = "exnodepool"
    agents_availability_zones        = ["1", "2"]
    agents_type                      = "VirtualMachineScaleSets"
  }
}