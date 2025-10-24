resource "azurerm_mssql_database" "example" {
  name                = var.sql_db
  resource_group_name = var.rg_name
  location            = var.sql_dbloc
  server_id         = var.sql_db_id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = "2"
  sku_name     = "S0"
  enclave_type = "VBS"
}
