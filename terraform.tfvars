
rg_name  = "rg"
location = "East US"
prefix   = "eultengo"

##### AKS ACR
cluster_name        = "aks"
kubernetes_version  = "1.21.7"
system_node_count   = 1
azure_acr_name      = "acr01" ## alpha numeric characters only are allowed in name
azure_acr_role_name = "azure_acr_role"
vmsize              = "Standard_B2s"

##### Mysql Database
sql_server_name     = "sqlserver01"
sql_server_login    = "prueba01"
sql_server_password = "@Aa123456789!"
sql_database_name   = "name-sqldatabase"
name_keyvault       = "keyvault"