#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]=="howl"
echo "dog sound" ${sounds[dog]} #dog sound
echo "all animal sound" ${sounds[@]} #all values
echo "animal" ${!sounds[@]}
echo "number of animals" ${#sounds[@]}
