#!/bin/sh

echo 'Parsing ZMK keymap...'
keymap -c keymap_config.yaml parse -z ../config/corne_tp.keymap > keymap.yaml

echo '\n\nDrawing keymap...'
keymap -c keymap_config.yaml draw --qmk-keyboard crkbd/rev1 --qmk-layout LAYOUT_split_3x6_3 keymap.yaml > keymap.svg
