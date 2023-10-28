terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "sultanTest" {
  name = var.ResourceGroup
  location = var.location
  
}

# data "azurerm_resource_group" "Sultan" {
#   name = var.ResourceGroup
# }


# data "azurerm_subnet" "Subnetvalue" {
#   name                 = "SUBNET_96_0"
#   virtual_network_name = "VNET_66_0"
#   resource_group_name  = "NCR_NETWORK_RGP_66_0"
# }

# # Fetch details about an existing Azure Storage Account
# data "azurerm_storage_account" "existing_storage" {
#   name                = "asaz163devtestlab5006"
#   resource_group_name = "NCR_SWS_LAB_RGP_66_0"
# }


# resource "azurerm_network_interface" "SateNic" {
#   name                = "Satenic"
#   resource_group_name = var.ResourceGroup
#   location            = var.location

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.Subnetvalue.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }



# resource "azurerm_windows_virtual_machine" "SateVM" {
#   name                            = "SateVM"
#   resource_group_name             = var.ResourceGroup
#   location                        = var.location
#   size                            = "Standard_B2s"
#   admin_username                  = "AZadmin"
#   admin_password                  = "AZLABn2j4g5123"
#   network_interface_ids = [
#     azurerm_network_interface.SateNic.id,
#   ]

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2019-Datacenter"
#     version   = "latest"
#   }

#   os_disk {
#     name                 = "SateOSdisk"
#     storage_account_type = "Standard_LRS"
#     caching              = "ReadWrite"
#   }
# }