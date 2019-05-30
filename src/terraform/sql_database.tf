resource "azurerm_sql_database" "reflection" {
  name                = "reflection"
  resource_group_name = "${azurerm_resource_group.database.name}"
  location            = "${azurerm_resource_group.database.location}"
  server_name         = "${azurerm_sql_server.reflection.name}"
  collation           = "${var.sql_database_collation}"
}
