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
    name = "appsacrrrrrr"
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
                vm_size = "Standard_a2_v2"
            }
        }
        cluster_tags = {
            owner = "Apps"
        }
    }
}


vnet = {
  vnet1 = {
    name = "appsvnet"
    location = "West US"
    resource_group_name = "Appsinfrarg"
    address_space = ["10.0.0.0/16"]
    subnet = [{
       name             = "subnet-app"
       address_prefixes = ["10.0.1.0/24"]
    }]
    
  }
}

keyvault = {
  keyvault1 = {
    name = "Apvault00199900001"
    location = "West US"
    rg  = "Appsinfrarg"
    sku_name = "standard"
    access_policy = [
        {
        key_permissions = ["Get","List"]
        secret_permissions = ["Get","Set","List"]
        storage_permissions = ["Get","Set","List"]
        }
    ]
    
  }
}

stg = {
  stg1 = {
    name = "Apstg00019000"
    resource_group_name = "Appsinfrarg"
    location = "West US"
    account_tier = "Standard"
    account_replication_type = "LRS"
    
  }
}