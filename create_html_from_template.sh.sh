function create_html_from_template() {
  local name="$1"  
  cp -r -u /home/moustache/Documents/Donkey/Cours-théorique/cours-html-css/projet-html-css/template-html-css-responive "$name"
}
# Utilisation de la fonction avec un nom de projet en argument
create_html_from_template "$1"
