///scr_loadPokemon()
var file = file_text_open_read(working_directory + "\pokemon.txt");
var pokeArray = 0;
var count = 0;
while !(file_text_eof(file)) {
    var pokemonIndex = file_text_read_real(file);
    file_text_readln(file);
    var pokemonID = file_text_read_string(file);
    file_text_readln(file);
    var pokemonLevel = file_text_read_real(file);
    file_text_readln(file);
    var pokemonHealth = file_text_read_real(file);
    file_text_readln(file);
    var pokemonMaxHealth = file_text_read_real(file);
    file_text_readln(file);
    var pokemonAttack = file_text_read_real(file);
    file_text_readln(file);
    var pokemonDefense = file_text_read_real(file);
    file_text_readln(file);
    var pokemonSpeed = file_text_read_real(file);
    file_text_readln(file);
    var pokemonSpAttack = file_text_read_real(file);
    file_text_readln(file);
    var pokemonSpDefense = file_text_read_real(file);
    file_text_readln(file);
    var pokemonTypeOne = file_text_read_string(file);
    file_text_readln(file);
    var pokemonMoveOne = file_text_read_string(file);
    file_text_readln(file);
    var pokemonMoveTwo = file_text_read_string(file);
    file_text_readln(file);
    var pokemonMoveThree = file_text_read_string(file);
    file_text_readln(file);
    var pokemonMoveFour = file_text_read_string(file);
    file_text_readln(file);
    var pokemonExp = file_text_read_real(file);
    file_text_readln(file);
    var pokemonHP = file_text_read_real(file);
    file_text_readln(file);
    var pokemonNextLevel = file_text_read_real(file);
    
    pokeArray[pokemonIndex, 0] = pokemonID;
    pokeArray[pokemonIndex, 1] = pokemonLevel;
    pokeArray[pokemonIndex, 2] = pokemonHealth;
    pokeArray[pokemonIndex, 3] = pokemonMaxHealth;
    pokeArray[pokemonIndex, 4] = pokemonAttack;
    pokeArray[pokemonIndex, 5] = pokemonDefense;
    pokeArray[pokemonIndex, 6] = pokemonSpeed;
    pokeArray[pokemonIndex, 7] = pokemonSpAttack;
    pokeArray[pokemonIndex, 8] = pokemonSpDefense;
    pokeArray[pokemonIndex, 9] = pokemonTypeOne;
    pokeArray[pokemonIndex, 10] = pokemonMoveOne;
    pokeArray[pokemonIndex, 11] = pokemonMoveTwo;
    pokeArray[pokemonIndex, 12] = pokemonMoveThree;
    pokeArray[pokemonIndex, 13] = pokemonMoveFour;
    pokeArray[pokemonIndex, 14] = pokemonExp;
    pokeArray[pokemonIndex, 15] = pokemonHP;
    pokeArray[pokemonIndex, 16] = pokemonNextLevel;
    file_text_readln(file);
}
file_text_close(file);
//return an array filled with the pokemon currently in the text file
return pokeArray;
