## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aks"></a> [aks](#module\_aks) | ./modules/aks | n/a |
| <a name="module_mysql"></a> [mysql](#module\_mysql) | ./modules/mysql | n/a |
| <a name="module_resourcegroup"></a> [resourcegroup](#module\_resourcegroup) | ./modules/resourceg | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_acr_name"></a> [azure\_acr\_name](#input\_azure\_acr\_name) | Name of Azure Container Registry | `string` | n/a | yes |
| <a name="input_azure_acr_role_name"></a> [azure\_acr\_role\_name](#input\_azure\_acr\_role\_name) | Name of policy of azure Container Registry | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | AKS name in Azure | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | AKS version | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location Project on Azure | `string` | n/a | yes |
| <a name="input_name_keyvault"></a> [name\_keyvault](#input\_name\_keyvault) | Name of KeyVault | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix resources | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name Resource Group on Azure | `string` | n/a | yes |
| <a name="input_sql_database_name"></a> [sql\_database\_name](#input\_sql\_database\_name) | Name of sql mssql server | `string` | n/a | yes |
| <a name="input_sql_server_login"></a> [sql\_server\_login](#input\_sql\_server\_login) | User Login of Ms SQL Server | `string` | n/a | yes |
| <a name="input_sql_server_name"></a> [sql\_server\_name](#input\_sql\_server\_name) | Name of Ms SQL Server | `string` | n/a | yes |
| <a name="input_sql_server_password"></a> [sql\_server\_password](#input\_sql\_server\_password) | Password of MS SQL Server | `string` | n/a | yes |
| <a name="input_system_node_count"></a> [system\_node\_count](#input\_system\_node\_count) | Quantity of nodes in AKS | `number` | n/a | yes |
| <a name="input_vmsize"></a> [vmsize](#input\_vmsize) | Size of nodes in cluster | `string` | n/a | yes |

## Outputs

No outputs.
