var buffer = argument[0]//1, mouse x, mouse y
var message_id = buffer_read(buffer, buffer_u8)
// after this buffer reads: mouse x, mouse y

switch message_id {
    case 1:
        //read mouse x
        var mx = buffer_read(buffer, buffer_u32)
        //read mouse y
        var my = buffer_read(buffer, buffer_u32)
        instance_create(mx, my, clickObj)
        break
    case 2:
        //read in player position and animation
        //read player position
        var xpos = buffer_read(buffer, buffer_u32)
        var ypos = buffer_read(buffer, buffer_u32)
        //read player animation
        var currentAnimation = buffer_read(buffer, buffer_string)
        break
    case 3:
        //receive chatBox.entryString
        var sentString = buffer_read(buffer, buffer_string)
        //set local chatBox.receivedString
        //chatBox.receivedString = sentString
        break
    case 4:
        //challenge or trade sent
        var battleOrTrade = buffer_read(buffer, buffer_string)
        if (battleOrTrade = "battle") {
            //announce player has been challenged
            //scr_text_Accept( "You've been challenged! Do you accept?", 1, playerObj.x, playerObj.y + 210)
            playerObj.challenged = true
            //reset trade request flag
            if (playerObj.trequest = true) {
                playerObj.trequest = false
            }
        }
        else if (battleOrTrade = "trade") {
            //announce request for trade
            //scr_text_Accept( "A player has requested to trade with you! Would you like to trade?", 1, playerObj.x, playerObj.y + 210)
            playerObj.trequest = true
            //reset challenge flag
            if (playerObj.challenged = true) {
                playerObj.challenged = false
            }
        }
        break
    case 5:
        //player has accepted, id whether battle or trade
        var challenge = buffer_read(buffer, buffer_bool)
        var trade = buffer_read(buffer, buffer_bool)
        //if accepted a battle
        if (challenge){
            //scr_startPlayerBattle()
        } //if accepted a trade
        else if (trade){
        
        }
        break
    case 6:
        //player has clicked another player, receive pokemon names in playerObj.otherPlayerPokemon
        var numberOfPokes = buffer_read(buffer, buffer_u8)
        for (var i = 0; i < numberOfPokes; i++) {
            var pokeName = buffer_read(buffer, buffer_string)
            //playerObj.otherPlayerPokemon[i] = pokeName
        }
        break
    case 7:
        //you have been clicked, set playerObj.getPokemonNames = true
        playerObj.getPokemonNames = true
        break
    case 8 :
        //receive and set playerBattleObj.enemyPokemon
        var enemy = buffer_read(buffer, buffer_string)
        //playerBattleObj.enemyPokemon = enemy
        break
    case 9:
        //receive level, base attack, and working attack of enemy pokemon
        var enemyLevelStat = buffer_read(buffer, buffer_u8)
        var enemyBaseAttackStat = buffer_read(buffer, buffer_u8)
        var enemyWorkingAttackStat = buffer_read(buffer, buffer_u8)
        //obtain current pokemon's working defense
        var currentPokemonLevel = playerObj.pokemonArray[@ playerBattleObj.currentPokemon, 1]
        var currentPokemonBaseDefense = playerObj.pokemonArray[@ playerBattleObj.currentPokemon, 5]
        var currentPokemonWorkingDefense = (currentPokemonBaseDefense * 2) * currentPokemonLevel / 100 + 5
        //calculate damage and send to playerBattleObj
        var damage = ((2*enemyLevelStat+10)/250) * (enemyWorkingAttackStat/currentPokemonWorkingDefense) * (enemyBaseAttackStat+2) + irandom_range(0, 10)
        //playerBattleObj.damageReceived = damage
        //playerBattleObj.otherPlayerTurnEnd = true
        break
    case 10:
        var enemyPokeHealth = buffer_read(buffer, buffer_u8)
        if (instance_exists(playerBattleObj)) {
            playerBattleObj.enemyHealth = enemyPokeHealth
        }
        break
}
