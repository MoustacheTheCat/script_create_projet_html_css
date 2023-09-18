#!/bin/bash

globct() {
    local option="$1"
    local name="$2"
    local nb="$3"

    if [ "$#" -ne 3 ]; then
        echo "Usage: globct <option> <name> <nb>"
        return 1
    fi

    if [ "$option" = "cnnb" ]; then
        git clone https://votre_repository.git "$name"
    elif [ "$option" = "cwnb" ]; then
        git clone https://votre_repository.git "$name"
    elif [ "$option" = "lnnb" ]; then
        cp -r -u /localisation_de_votre_template/template-html-css-responive "$name"
    elif [ "$option" = "lwnb" ]; then
        cp -r -u /localisation_de_votre_template/template-html-css-responive-with-nav-bar "$name"
    elif [ "$option" = "lnnbm" ]; then
        cp -r -u /localisation_de_votre_template/template-html-css-responive-multi-page "$name"
        for ((c=1; c<=nb; c++))
        do  
            cp -r -u /localisation_de_votre_template/template-html-css-responive-multi-page/html/page-1.html "$name"/html/page-"$c".html
        done
    elif [ "$option" = "lwnbm" ]; then
        cp -r -u /localisation_de_votre_template/template-html-css-responive-with-nav-bar-multi-page "$name"
        for ((c=1; c<=nb; c++))
        do  
            cp -r -u /localisation_de_votre_template/template-html-css-responive-with-nav-bar-multi-page/html/page-1.html "$name"/html/page-"$c".html
        done
    else
        echo "Option invalide : $option"
        return 1
    fi
}

# Utilisation de la fonction avec un nom de projet en argument
globct "$1" "$2" "$3"

