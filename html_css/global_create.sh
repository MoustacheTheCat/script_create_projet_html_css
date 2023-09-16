function globct() {
    local option="$1"
    local name="$2"

    if [ "$option" = "cnnb" ]; then
        git clone https://github.com/MoustacheTheCat/template_html_css_responsive.git "$name"
    elif [ "$option" = "cwnb" ]; then
        git clone https://github.com/MoustacheTheCat/template_html_css_responsive_with_nav_bar.git "$name"
    elif [ "$option" = "lnnb" ]; then
        mkdir -p "$name"/{css,font,img/{logo,picture}} && touch "$name"/index.html && touch "$name"/css/style.css
    elif [ "$option" = "lwnb" ]; then
        cp -r -u /home/moustache/Documents/Donkey/Cours-théorique/cours-html-css/projet-html-css/template-html-css-responive "$name"
    fi
}

# Utilisation de la fonction avec un nom de projet en argument
globct "$1" "$2"

