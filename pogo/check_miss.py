#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import csv
import pogolib
import sys


#Nidoran♀
#Nidoran♂

all_pokemon = [
    "Bulbasaur",
    "Ivysaur",
    "Venusaur",
    "Charmander",
    "Charmeleon",
    "Charizard",
    "Squirtle",
    "Wartortle",
    "Blastoise",
    "Caterpie",
    "Metapod",
    "Butterfree",
    "Weedle",
    "Kakuna",
    "Beedrill",
    "Pidgey",
    "Pidgeotto",
    "Pidgeot",
    "Rattata",
    "Raticate",
    "Spearow",
    "Fearow",
    "Ekans",
    "Arbok",
    "Pikachu",
    "Raichu",
    "Sandshrew",
    "Sandslash",
    "NidoranFemale",
    "Nidorina",
    "Nidoqueen",
    "NidoranMale",
    "Nidorino",
    "Nidoking",
    "Clefairy",
    "Clefable",
    "Vulpix",
    "Ninetales",
    "Jigglypuff",
    "Wigglytuff",
    "Zubat",
    "Golbat",
    "Oddish",
    "Gloom",
    "Vileplume",
    "Paras",
    "Parasect",
    "Venonat",
    "Venomoth",
    "Diglett",
    "Dugtrio",
    "Meowth",
    "Persian",
    "Psyduck",
    "Golduck",
    "Mankey",
    "Primeape",
    "Growlithe",
    "Arcanine",
    "Poliwag",
    "Poliwhirl",
    "Poliwrath",
    "Abra",
    "Kadabra",
    "Alakazam",
    "Machop",
    "Machoke",
    "Machamp",
    "Bellsprout",
    "Weepinbell",
    "Victreebel",
    "Tentacool",
    "Tentacruel",
    "Geodude",
    "Graveler",
    "Golem",
    "Ponyta",
    "Rapidash",
    "Slowpoke",
    "Slowbro",
    "Magnemite",
    "Magneton",
    "Farfetchd",
    "Doduo",
    "Dodrio",
    "Seel",
    "Dewgong",
    "Grimer",
    "Muk",
    "Shellder",
    "Cloyster",
    "Gastly",
    "Haunter",
    "Gengar",
    "Onix",
    "Drowzee",
    "Hypno",
    "Krabby",
    "Kingler",
    "Voltorb",
    "Electrode",
    "Exeggcute",
    "Exeggutor",
    "Cubone",
    "Marowak",
    "Hitmonlee",
    "Hitmonchan",
    "Lickitung",
    "Koffing",
    "Weezing",
    "Rhyhorn",
    "Rhydon",
    "Chansey",
    "Tangela",
    "Kangaskhan",
    "Horsea",
    "Seadra",
    "Goldeen",
    "Seaking",
    "Staryu",
    "Starmie",
    "MrMime",
    "Scyther",
    "Jynx",
    "Electabuzz",
    "Magmar",
    "Pinsir",
    "Tauros",
    "Magikarp",
    "Gyarados",
    "Lapras",
    "Ditto",
    "Eevee",
    "Vaporeon",
    "Jolteon",
    "Flareon",
    "Porygon",
    "Omanyte",
    "Omastar",
    "Kabuto",
    "Kabutops",
    "Aerodactyl",
    "Snorlax",
    "Articuno",
    "Zapdos",
    "Moltres",
    "Dratini",
    "Dragonair",
    "Dragonite",
    "Mewtwo",
    "Mew",
]

pokemon_not_catachable = [
    "Ditto",
    "Articuno",
    "Zapdos",
    "Moltres",
    "Mewtwo",
    "Mew",
]

TOP = 30

# write csv file
def write_rows_csv_file(file_name, rows):
    # with open(file_name, 'wb', newline='', encoding='utf-8') as ofile:
    with open(file_name, 'w', encoding='utf-8') as ofile:
        # writer = csv.writer(ofile)
        # writer.writerows(queries)
        for row in rows:
            ofile.write(row + "\n")

# Find the diff of two files
# Wrote diff inside first file, with the same order
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True,
                        help='bot dump text file')
    parser.add_argument('-o', '--output', required=True,
                        help='output csv file in utf-8 format')
    parser.add_argument('-d', '--debug', action="store_true", required=False,
                        help="enable debugging")

    args = parser.parse_args()

    inputFile = args.input
    outputFile = args.output
    if (args.debug):
        debug = True
    else:
        debug = False

    caught_pokemon_list = pogolib.parse_bot_dump_file(inputFile, debug)
    print("read " + str(len(caught_pokemon_list)) + " pokemons from " + inputFile + ".")

    caught_pokemons = []
    for pokemon in caught_pokemon_list:
        if pokemon["name"] not in caught_pokemons:
            caught_pokemons.append(pokemon["name"])

    print("This id has " + str(len(caught_pokemons)) + " unique pokemons. Available pokemon to catch is 145.")

    missed_pokemon_list = []
    for pokemon in all_pokemon:
        if pokemon not in caught_pokemons and pokemon not in pokemon_not_catachable:
            missed_pokemon_list.append(pokemon)

    print("Find " + str(len(missed_pokemon_list)) + " missing pokemons.")

    with open(outputFile, 'w', encoding='utf-8') as ofile:
        ofile.write("Top Pokemon List by IV%:\n")
        count = 1
        for pokemon in caught_pokemon_list:
            ofile.write(pokemon["name"] + ": " + pokemon["iv"] + " " + pokemon["cp"] + "\n")
            count += 1
            if (count > 30):
                break;


        ofile.write("\n\nPokemon to be caught:\n")
        for pokemon in missed_pokemon_list:
            ofile.write(pokemon+"\n")

        ofile.write("\n\n")
        for _ in range(5):
            ofile.write("PokeSniper2.exe \n")
            ofile.write("PokeSniper2.exe \n")
            ofile.write("PokeSniper2.exe \n")
            ofile.write("PokeSniper2.exe \n")
            ofile.write("PokeSniper2.exe \n")
            ofile.write("\n")

    print("update data to " + outputFile)

if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
