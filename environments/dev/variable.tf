variable "rgs" {
    type = map(object({
        name = string
        location = string
        tags = map(string)
    }))
  
}

variable "sql" {
    type = map(object({
        sql_server_name = string
        rg_name = string
        location = string
        username = string
        password = string
        sqldb_name = string

    }))
  
}


variable "aks" {
    type = map(object({
        name = string
        location = string
        rg_name = string
        dns_prefix = string
        default_node_pool = map(object({
            name = string
            node_count = number
            vm_size = string
        }))
        cluster_tags = map(string)

    }))
  
}

variable "acr" {
    type = map(object({
        name = string
        rg_name = string
        location = string
        sku = string
        tags = map(string)
    }))
  
}


variable "vnet" {
  
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

    subnet = optional(list(object({
      name              = string
      address_prefixes  = list(string)
    })))
  }))
}


variable "keyvault" {
    type = map(object({
        name = string
        location = string
        rg = string
        enabled_for_disk_encryption = optional(bool,true)
        soft_delete_retention_days = optional(number,7)
        purge_protection_enabled = optional(bool,false)
        sku_name = string
        access_policy = list(object({
            key_permissions = list(string)
            secret_permissions = list(string)
            storage_permissions = list(string)
            
    }))

    }))
  
}

variable "stg" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
  
  }