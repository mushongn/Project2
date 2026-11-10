#! /bin/bash

awk -F',' '$1 < 152 && $1 > 0 && $2 !~ /Mega/' all_pokemon.csv

