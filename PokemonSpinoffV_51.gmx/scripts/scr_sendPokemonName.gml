///scr_sendPokemonName()
if (instance_exists(serverObj)) {
    //if this is the server
    buffer_seek(serverObj.buffer, buffer_seek_start, 0)
    
    buffer_write(serverObj.buffer, buffer_u8, 8)
    buffer_write(serverObj.buffer, buffer_string, playerObj.pokemonArray[@ playerBattleObj.currentPokemon, 0])
    
    network_send_packet(serverObj.socket, serverObj.buffer, buffer_tell(serverObj.buffer))
}
else if (instance_exists(clientObj)) {
    //if this is the client
    buffer_seek(clientObj.buffer, buffer_seek_start, 0)
    
    buffer_write(clientObj.buffer, buffer_u8, 8)
    buffer_write(clientObj.buffer, buffer_string, playerObj.pokemonArray[@ playerBattleObj.currentPokemon, 0])
    
    network_send_packet(clientObj.socket, clientObj.buffer, buffer_tell(clientObj.buffer))
}
