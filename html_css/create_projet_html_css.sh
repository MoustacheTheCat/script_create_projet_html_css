function create_projet_html() {
    local name="$1"  
    mkdir -p "$name"/{css,font,img/{logo,picture}} && touch "$name"/index.html >
}

# Utilisation de la fonction avec un nom de projet en argument
create_projet_html "$1"
