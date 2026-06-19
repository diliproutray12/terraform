vmcloud = {
    frontendvm = {
        name = "frontendvm1"
        location "eastus"
        resource_group_name = "devrg"
        network_interface_ids = ["/subscriptions/sub id /resourceGroups/devrg/providers/Microsoft.Network/networkInterfaces/nic1"]
        vm_size = "Standard_DS1_v2"
    }
}