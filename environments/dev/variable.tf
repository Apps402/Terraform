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
