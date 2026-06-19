peerings = {
  vnet1_to_vnet2 = {
    name                         = "peering1to2"
    resource_group_name          = "devrg"
    virtual_network_name         = "luckyvnet1"
    remote_virtual_network_id    = "/subscriptions/sub id /resourceGroups/devrg/providers/Microsoft.Network/virtualNetworks/luckyvnet1"
  }
     vnet2_to_vnet1 = {
     name                         = "peering2to1"
    resource_group_name          = "devrg"
    virtual_network_name         = "luckyvnet2"
    remote_virtual_network_id    = "/subscriptions/sub id /resourceGroups/devrg/providers/Microsoft.Network/virtualNetworks/luckyvnet2" 
 
  }
}
