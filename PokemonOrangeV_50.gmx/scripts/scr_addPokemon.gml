///scr_addPokemon(otherPokemonArray, numberofpokemonplayerhas)
if (file_exists(working_directory + "\pokemon.txt")) {
    var file = file_text_open_write(working_directory + "\pokemon.txt")
    for (i = 0; i < playerObj.numOfPokemon; i++) {
        file_text_write_real(file, i) //index
        file_text_writeln(file)
        var count = 0
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //id
        file_text_writeln(file)
        var count = 1
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //level
        file_text_writeln(file)
        var count = 2
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //hpbase
        file_text_writeln(file)
        var count = 3
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //maxhealth
        file_text_writeln(file)
        var count = 4
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //attack
        file_text_writeln(file)
        var count = 5
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //defense
        file_text_writeln(file)
        var count = 6
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //speed
        file_text_writeln(file)
        var count = 7
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //spattack
        file_text_writeln(file)
        var count = 8
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //spdefense
        file_text_writeln(file)
        var count = 9
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //typeone
        file_text_writeln(file)
        var count = 10
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //moveone
        file_text_writeln(file)
        var count = 11
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //movetwo
        file_text_writeln(file)
        var count = 12
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //movethree
        file_text_writeln(file)
        var count = 13
        file_text_write_string(file, playerObj.pokemonArray[i, count]) //movefour
        file_text_writeln(file)
        var count = 14
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //exp
        file_text_writeln(file)
        var count = 15
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //current health
        file_text_writeln(file)
        var count = 16
        file_text_write_real(file, playerObj.pokemonArray[i, count]) //nextlevel
        file_text_writeln(file)
    }
    file_text_close(file)
}

var file = file_text_open_append(working_directory + "\pokemon.txt");
var pokeArray = argument0
count = 0
var pokemonIndex = file_text_write_real(file, argument1);
playerObj.numOfPokemon = argument1 + 1;
file_text_writeln(file);
var pokemonID = file_text_write_string(file, argument0[0, 0]);
file_text_writeln(file);
var pokemonLevel = file_text_write_real(file, argument0[0, 1]);
file_text_writeln(file);
var pokemonHealth = file_text_write_real(file, argument0[0, 2]);
file_text_writeln(file);
var pokemonMaxHealth = file_text_write_real(file, argument0[0, 3]);
file_text_writeln(file);
var pokemonAttack = file_text_write_real(file, argument0[0, 4]);
file_text_writeln(file);
var pokemonDefense = file_text_write_real(file, argument0[0, 5]);
file_text_writeln(file);
var pokemonSpeed = file_text_write_real(file, argument0[0, 6]);
file_text_writeln(file);
var pokemonSpAttack = file_text_write_real(file, argument0[0, 7]);
file_text_writeln(file);
var pokemonSpDefense = file_text_write_real(file, argument0[0, 8]);
file_text_writeln(file);
var pokemonTypeOne = file_text_write_string(file, argument0[0, 9]);
file_text_writeln(file);
var pokemonMoveOne = file_text_write_string(file, argument0[0, 10]);
file_text_writeln(file);
var pokemonMoveTwo = file_text_write_string(file, argument0[0, 11]);
file_text_writeln(file);
var pokemonMoveThree = file_text_write_string(file, argument0[0, 12]);
file_text_writeln(file);
var pokemonMoveFour = file_text_write_string(file, argument0[0, 13]);
file_text_writeln(file);
var pokemonExp = file_text_write_real(file, argument0[0, 14]);
file_text_writeln(file);
var pokemonHP = file_text_write_real(file, argument0[0, 15]);
file_text_writeln(file);
var pokemonNextLevel = file_text_write_real(file, argument0[0, 16]);
file_text_writeln(file)
file_text_close(file);

playerObj.pokemonArray = scr_loadPokemon()
