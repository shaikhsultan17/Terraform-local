# For uploading state file in Azure storage account

terraform {
  backend "azurerm" {
    resource_group_name = "NCR_SWS_LAB_RGP_66_0"
    storage_account_name = "asaz163devtestlab5006"
    container_name = "sultan-terraform"
    key = "terraform.tfstate"
    client_id       = "559841b4-ad96-4aa1-a940-9858612c0a27"
    client_secret   = "aky8Q~WWuTjwg_hSUXXXOLqKG_sP_Hh5mu7KCbJq"
    tenant_id       = "ae4df1f7-611e-444f-897e-f964e1205171"
    subscription_id = "89b5ef19-2947-453b-a6c3-7da58a8e8a2a"
  }
}