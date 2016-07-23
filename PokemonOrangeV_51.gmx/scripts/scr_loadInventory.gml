///scr_loadInventory()
var file = file_text_open_read(working_directory + "\inventory.txt")
while !(file_text_eof(file)) {
    var itemKey = file_text_read_real(file)
    file_text_readln(file)
    var itemNumber = file_text_read_real(file)
    file_text_readln(file)
    
    ds_map_add(playerObj.inventoryMap, itemKey, itemNumber)
}
file_text_close(file)
