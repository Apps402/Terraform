rgs = {
    rg1 ={
        name = "Appsinfrarg"
        location = "West US"
        tags = {
            owner = "Apps"
        }
    }
}

acr = {
  acr1 = {
    name = "appsacr"
    rg_name =  "Appsinfrarg"
    location = "West US"
    sku = "Premium"
    tags = {
        owner = "Apps"
    }
    
    
  }
}

sql = {
  sql1 = {
    sql_server_name = "appsserver"
    rg_name = "Appsinfrarg"
    location = "West US"
    username = "devops123456"
    password = "devops@123"
    sqldb_name = "appsdbb"
    
  }
}



aks = {
    aks1={
        name =  "apcluster"
        location = "West US"
        rg_name = "Appsinfrarg"
        dns_prefix = "apaks"
        default_node_pool ={
            d1 ={
                name = "default"
                node_count = 1
                vm_size = "Standard_D2_v2"
            }
        }
        cluster_tags = {
            owner = "Apps"
        }
    }
}
