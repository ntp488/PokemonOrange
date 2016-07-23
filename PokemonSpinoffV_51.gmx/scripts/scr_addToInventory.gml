///scr_addToInventory(item key)
var previousValue = ds_map_find_value(playerObj.inventoryMap, argument0)
var newValue = previousValue + 1
ds_map_replace(playerObj.inventoryMap, argument0, newValue)
