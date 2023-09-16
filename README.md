# script_create_new_projet_html

Crée le scrip dans ./bin :

	sudo touch create_temp_w.sh 

Ouvre le fichier create_new_projet_html.sh

	sudo nano  create_temp_w.sh 

Puis copier le code dans le fichier create_projet_html_css.sh :

    function create_temp_w() {
    local option="$1"
    local name="$2"

    if [ "$option" = "cnnb" ]; then
        git clone https://votre repository.git "$name"
    elif [ "$option" = "cwnb" ]; then
        git clone https:/votre repository.git "$name"
    elif [ "$option" = "lnnb" ]; then
        mkdir -p "$name"/{css,font,img/{logo,picture}} && touch "$name"/index.html && touch "$name"/css/style.css
    elif [ "$option" = "lwnb" ]; then
        cp -r -u /emplacement_de_votre_template/ "$name"
    fi
    }
	
    # Utilisation de la fonction avec un nom de projet en argument
    create_temp_w "$1" "$2"

Rendre le fichier executable:

	sudo chmod +x create_temp_w.sh

Editer le PATH pour rendre le fichier utilisable :
	
	sudo nano ~/.bashrc

Ajouter cette ligne a la fin du fichier bashrc (penser a modifier selon l’emplacement de votre dossier bin vis àvis de la racine) :

	export PATH="$PATH:$./bin"

Relancer bashrc pour prendre en compte la modification :

	source ~/.bashrc


vous pouvez maintenant exécuter la commande 

	create_temp_w.sh 'option' ‘nom du projet’
 
Option disponible 

-> lnnb -> local not nav bar
-> lwnb -> local with nav bar
-> cnnb -> Clone Repository Git not nav bar
-> cwnb -> Clone Repository Git with nav bar

pour crée votre nouveau projet.

V1.0.0
