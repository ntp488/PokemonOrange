///scr_wildEncounter(pokemonRand)
var message = instance_create(playerObj.x, playerObj.y, wildEncounterObj)
//determine name of pokemon to output
var name = ""
switch (argument0) {
    case 0: //encountered a bellossom
        name = "Bellossom"
        break
    case 1: //encountered a buizel
        name = "Buizel"
        break
}
with message {
    pokeName = name
}

