#!/bin/bash

function create_projet_html_css() {
    local name="$1"  
    cp -r -u /home/moustache/Documents/Donkey/Cours-théorique/cours-html-css/projet-html-css/template-html-css-responive $name
    
}

# Utilisation de la fonction avec un nom de projet en argument
create_projet_html_css "$1"
