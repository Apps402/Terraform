locals {
  common_tags ={
    name = "Apps"
    owner = "AP"
  }
}

module "rg" {
    source = "../../modules/resource_group"
    rg_name = var.rg_name
    rg_loc = var.rg_loc
    rg_tags = local.common_tags
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../modules/container_registry"
    acr_name = var.acr_name
    acr_loc = var.acr_loc
    rg_name = var.rg_name
    acr_sku = var.acr_sku
    acr_tags = local.common_tags
  
}

module "sql_server" {
    depends_on = [ module.rg ]
    source = "../../modules/sql_server"
    sql_name = var.sql_name
    rg_name = var.rg_name
    sql_loc = var.sql_loc
    sql_username = var.sql_username
    sql_pwd = var.sql_pwd
  
}

module "sql_db" {
    depends_on = [ module.rg ]
    source = "../../modules/sql_db"
    sql_db = var.sql_db
    rg_name = var.rg_name
    sql_dbloc = var.sql_dbloc
    sql_db_id = module.sql_server.sql_server_id
  
}

module "aks_cluster" {
    depends_on = [ module.rg ]
    source = "../../modules/kubernetes cluster"
    aks_name = var.aks_name
    aks_loc = var.aks_loc
    rg_name = var.rg_name
    dns = var.dns
    cluster_tags = local.common_tags
  
}
