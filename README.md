# script_create_new_projet_html

Crée le scrip dans ./bin :

	sudo touch create_new_projet_html.sh 

Ouvre le fichier create_new_projet_html.sh

	sudo nano  create_new_projet_html.sh 

Puis copier le code dans le fichier create_projet_html_css.sh :

	function create_new_projet_html() {
   		local name="$1"  
    		cp -r -u /le_chemin_vers_votre_template/nom_de_la_template "$name"
	}
	# Utilisation de la fonction avec un nom de projet en argument
	create_new_projet_html ‘$1’

Rendre le fichier executable:

	sudo chmod +x create_new_projet_html.sh

Editer le PATH pour rendre le fichier utilisable :
	
	sudo nano ~/.bashrc

Ajouter cette ligne a la fin du fichier bashrc (penser a modifier selon l’emplacement de votre dossier bin vis àvis de la racine) :

	export PATH="$PATH:$./bin"

Relancer bashrc pour prendre en compte la modification :

	source ~/.bashrc


vous pouvez maintenant exécuter la commande create_new_projet_html.sh ‘nom du projet’ depuis n’importe ou sur votre systèmes.

V2.0.0
