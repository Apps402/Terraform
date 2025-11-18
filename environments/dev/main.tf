#locals {
 # common_tags ={
  #  name = "Apps"
  #  owner = "AP"
  #}
#}

module "rg" {
    source = "../../modules/resource_group"
    rgs = var.rgs   

}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../modules/container_registry"
    acr = var.acr
}

#module "sql" {
#    depends_on = [ module.rg ]
#    source = "../../modules/sql"
#    sql = var.sql

#}


#module "aks_cluster" {
 #   depends_on = [ module.rg ]
 #   source = "../../modules/kubernetes cluster"
 #   aks = var.aks
  
#}
