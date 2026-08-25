rgs = {
  rg1 = {
    rg_name  = "devRG"
    location = "CentralIndia"
  }

}

vnets = {
  vnet1 = {
    rg_name       = "devRG"
    location      = "CentralIndia"
    vnet_name     = "devvnet"
    address_space = ["10.0.0.0/16"]
  }

}

subnets = {
  subnet1 = {
    rg_name          = "devRG"
    subnet_name      = "frontendsubnet"
    vnet_name        = "devvnet"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet2 = {
    rg_name          = "devRG"
    subnet_name      = "backendsubnet"
    vnet_name        = "devvnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    pip_name          = "frontendpip"
    rg_name           = "devRG"
    location          = "CentralIndia"
    allocation_method = "Static"
  }

  pip2 = {
    pip_name          = "backendpip"
    rg_name           = "devRG"
    location          = "CentralIndia"
    allocation_method = "Static"
  }
}

vms = {
  vm1 = {
    vm_name        = "frontendvm"
    nic_name       = "frontendnic"
    vnet_name      = "devvnet"
    pip_name       = "frontendpip"
    rg_name        = "devRG"
    location       = "CentralIndia"
    subnet_name    = "frontendsubnet"
    size           = "Standard_B1s"
    admin_username = "adminuser"
    admin_password = "admin@123456789"
  }

  vm2 = {
    vm_name        = "backendvm"
    nic_name       = "backendnic"
    vnet_name      = "devvnet"
    pip_name       = "backendpip"
    rg_name        = "devRG"
    location       = "CentralIndia"
    subnet_name    = "backendsubnet"
    size           = "SStandard_B1s"
    admin_username = "adminuser"
    admin_password = "admin@123456789"
  }
}

