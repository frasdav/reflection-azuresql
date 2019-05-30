output "sql_server_password" {
  value = "${random_string.sql_server_password.result}"
}
