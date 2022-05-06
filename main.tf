module "resourcegroup" {
  source   = "./modules/resourceg"
  prefix   = var.prefix
  rg_name  = "${var.prefix}-${terraform.workspace}-${var.rg_name}"
  location = var.location
}

module "mysql" {
  source              = "./modules/mysql"
  prefix              = var.prefix
  rg_name             = "${var.prefix}-${terraform.workspace}-${var.rg_name}"
  location            = var.location
  sql_server_name     = "eultengorampup${terraform.workspace}${var.sql_server_name}"
  sql_server_login    = var.sql_server_login
  sql_server_password = var.sql_server_password
  sql_database_name   = "${var.prefix}-${terraform.workspace}-${var.sql_database_name}"
  name_keyvault       = "${var.prefix}-${terraform.workspace}-${var.name_keyvault}"
  depends_on          = [module.resourcegroup]
}

module "aks" {
  source              = "./modules/aks"
  prefix              = var.prefix
  rg_name             = "${var.prefix}-${terraform.workspace}-${var.rg_name}"
  location            = var.location
  vmsize_node         = var.vmsize
  cluster_name        = "${var.prefix}-${terraform.workspace}-${var.cluster_name}"
  kubernetes_version  = var.kubernetes_version
  system_node_count   = var.system_node_count
  azure_acr_name      = "${var.prefix}${terraform.workspace}${var.azure_acr_name}" ## alpha numeric characters only are allowed in name
  azure_acr_role_name = "${var.prefix}-${terraform.workspace}-${var.azure_acr_role_name}"
  depends_on          = [module.resourcegroup]
}