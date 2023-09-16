# script_create_projet_html_css

Crée le scrip dans ./bin :

	touch create_projet_html_css.sh 

Puis copier le code dans le fichier create_projet_html_css.sh :
	nano  create_projet_html_css.sh 

	function create_projet_html() {
   		local name="$1"  
    		mkdir -p "$name"/{css,font,img/{logo,picture}} && touch "$name"/index.html && touch "$name"/css/style.css
	}
	# Utilisation de la fonction avec un nom de projet en argument
	create_projet_html ‘$1’

Rendre le fichier executable:

	sudo chmod +x nom_du_fichier.sh

Editer le PATH pour rendre le fichier utilisable :
	
	sudo nano ~/.bashrc

Ajouter cette ligne a la fin du fichier bashrc (penser a modifier selon l’emplacement de votre dossier bin vis àvis de la racine) :

	export PATH="$PATH:$./bin"

Relancer bashrc pour prendre en compte la modification :

	source ~/.bashrc


vous pouvez maintenant exécuter la commande create_projet_html_css.sh ‘nom du projet’ depuis n’importe ou sur votre systèmes.

V1.0.0

version responsive en préparation ………..
