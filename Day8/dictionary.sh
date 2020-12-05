#!/bin/bash 

declare -A sounds
sounds[dog]="bark"
sounds[cat]="mew"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "bird sound" ${sounds[bird]}
echo "All the dictionary elements" ${sounds[@]}
echo "Keys" ${!sounds[@]}

