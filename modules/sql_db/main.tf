resource "azurerm_sql_database" "example" {
  name                = var.sql_db
  resource_group_name = var.rg_name
  location            = var.sql_dbloc
  server_name         = var.sql_db_id

}