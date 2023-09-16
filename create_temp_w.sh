function create_temp_w() {
    local option="$1"
    local name="$2"

    if [ "$option" = "cnnb" ]; then
        git clone https://adresse_de_votre_repository.git "$name"
    elif [ "$option" = "cwnb" ]; then
        git clone https://adresse_de_votre_repository.git "$name"
    elif [ "$option" = "lnnb" ]; then
        mkdir -p "$name"/{css,font,img/{logo,picture}} && touch "$name"/index.html && touch "$name"/css/style.css
    elif [ "$option" = "lwnb" ]; then
        cp -r -u /emplacement_de_votre_template "$name"
    fi
}

# Utilisation de la fonction avec un nom de projet en argument
create_temp_w "$1" "$2"
