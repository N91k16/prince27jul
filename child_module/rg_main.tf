resource "azurerm_resource_group" "blockflower" {
    for_each = var.rose
    name = each.value.name
    location = each.value.location
  
}

resource "azurerm_resource_group" "blockrg2" {
  
  count = 5 
  name = "deepak-${count.index}"
  location = "east us"
}