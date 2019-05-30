resource "azurerm_resource_group" "database" {
  name     = "rg-reflection-database"
  location = "${var.location}"
}
