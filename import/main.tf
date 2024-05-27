# terraform import azurerm_resource_group.rg_import /subscriptions/ad4bb360-da20-4e8d-ab1b-7ad25c72173a/resourceGroups/Devops-insider-rg-02

#resource "azurerm_resource_group" "rg_import" {
 # location = "eastus"
 #   name     = "Devops-insider-rg-02"
 #   tags     = {}
#}

# terraform import azurerm_virtual_network.example /subscriptions/ad4bb360-da20-4e8d-ab1b-7ad25c72173a/resourceGroups/Devops-insider-rg-02/providers/Microsoft.Network/virtualNetworks/devops-vnet1


resource "azurerm_virtual_network" "example" {
     address_space           = [
        "10.0.0.0/16",
    ]
    dns_servers             = []
    flow_timeout_in_minutes = 0
    guid                    = "ebddd889-3640-4286-9bbd-961e67715d8a"
    id                      = "/subscriptions/ad4bb360-da20-4e8d-ab1b-7ad25c72173a/resourceGroups/Devops-insider-rg-02/providers/Microsoft.Network/virtualNetworks/devops-vnet1"
    location                = "eastus"
    name                    = "devops-vnet1"
    resource_group_name     = "Devops-insider-rg-02"
    subnet                  = [
        {
            address_prefix = "10.0.1.0/24"
            id             = "/subscriptions/ad4bb360-da20-4e8d-ab1b-7ad25c72173a/resourceGroups/Devops-insider-rg-02/providers/Microsoft.Network/virtualNetworks/devops-vnet1/subnets/frontend-subnet01"
            name           = "frontend-subnet01"
            security_group = ""
        },
        {
            address_prefix = "10.0.2.0/24"
            id             = "/subscriptions/ad4bb360-da20-4e8d-ab1b-7ad25c72173a/resourceGroups/Devops-insider-rg-02/providers/Microsoft.Network/virtualNetworks/devops-vnet1/subnets/backend-subnet01"
            name           = "backend-subnet01"
            security_group = ""
        },
    ]
    tags                    = {}
}


