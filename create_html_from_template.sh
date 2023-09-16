function create_html_from_template() {
  local name="$1"  
  cp -r -u /emplacement_de_votre_template "$name"
}
# Utilisation de la fonction avec un nom de projet en argument
create_html_from_template "$1"
