resource "random_string" "sql_server_password" {
  length      = 16
  min_lower   = 1
  min_upper   = 1
  min_numeric = 1
  special     = true
}

resource "azurerm_sql_server" "reflection" {
  name                         = "sql-reflection"
  resource_group_name          = "${azurerm_resource_group.database.name}"
  location                     = "${azurerm_resource_group.database.location}"
  version                      = "${var.sql_server_version}"
  administrator_login          = "${var.sql_server_username}"
  administrator_login_password = "${random_string.sql_server_password.result}"

  lifecycle {
    ignore_changes = ["administrator_login_password"]
  }
}
