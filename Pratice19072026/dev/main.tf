module "forRG" {
  source = "../module/Azurerm_RG"
  rgs    = var.rgs

}

module "forvnet" {
  source     = "../module/Azurerm_Vnet"
  vnets      = var.vnets
  depends_on = [module.forRG]

}

module "forsubnet" {
  source     = "../module/Azurerm_Subnet"
  subnets    = var.subnets
  depends_on = [module.forvnet]
}

module "forpip" {
  source     = "../module/Azurerm_PIP"
  pips       = var.pips
  depends_on = [module.forRG]

}

module "forVM" {
  source     = "../module/Azurerm_VM"
  vms        = var.vms
  depends_on = [module.forpip, module.forsubnet]

}

