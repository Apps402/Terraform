resource "azurerm_mssql_server" "sql" {
  name                         = var.sql_name
  resource_group_name          = var.rg_name
  location                     = var.sql_loc
  version                      = "12.0"
  administrator_login          = var.sql_username
  administrator_login_password = var.sql_pwd
  minimum_tls_version          = "1.2"

 
}

output "sql_server_id" {
    value = azurerm_mssql_server.sql.id
  
}