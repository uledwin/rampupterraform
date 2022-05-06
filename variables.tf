variable "rg_name" {
  description = "Name Resource Group on Azure"
  type        = string
}

variable "location" {
  description = "Location Project on Azure"
  type        = string
}

variable "prefix" {
  description = "Prefix resources"
  type        = string
}

################
#### aks
variable "cluster_name" {
  description = "AKS name in Azure"
  type        = string
}

variable "kubernetes_version" {
  type        = string
  description = "AKS version"
}

variable "system_node_count" {
  type        = number
  description = "Quantity of nodes in AKS"

}
variable "azure_acr_name" {
  type        = string
  description = "Name of Azure Container Registry"
}
variable "azure_acr_role_name" {
  type        = string
  description = "Name of policy of azure Container Registry"
}

################
#### SQL
variable "sql_server_name" {
  description = "Name of Ms SQL Server"
  type        = string
}

variable "sql_server_login" {
  description = "User Login of Ms SQL Server"
  type        = string
  sensitive   = true
}

variable "sql_server_password" {
  description = "Password of MS SQL Server"
  type        = string
  sensitive   = true
}

variable "sql_database_name" {
  description = "Name of sql mssql server"
  type        = string
}

variable "name_keyvault" {
  description = "Name of KeyVault"
  type        = string
}

variable "vmsize" {
  type        = string
  description = "Size of nodes in cluster"
}
