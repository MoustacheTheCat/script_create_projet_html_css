# script_global_create

Crée le scrip dans ./bin :

	sudo touch create_temp_w.sh 

Ouvre le fichier create_new_projet_html.sh

	sudo nano  create_temp_w.sh 

Puis copier le code dans le fichier create_projet_html_css.sh :

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

Rendre le fichier executable:

	sudo chmod +x create_temp_w.sh

Editer le PATH pour rendre le fichier utilisable :
	
	sudo nano ~/.bashrc

Ajouter cette ligne a la fin du fichier bashrc (penser a modifier selon l’emplacement de votre dossier bin vis àvis de la racine) :

	export PATH="$PATH:$./bin"

Relancer bashrc pour prendre en compte la modification :

	source ~/.bashrc


vous pouvez maintenant exécuter la commande 

	create_temp_w.sh option nom du projet

Option disponible 

Option 1 :

	-> lnnb -> local not nav bar
	-> lwnb -> local with nav bar
 	-> lnnbm -> local not nav bar multi page
	-> lwnbm -> local with nav bar multi page 
	-> cnnb -> Clone Repository Git not nav bar
	-> cwnb -> Clone Repository Git with nav bar

Option 2 :

 	nom_de_votre_projet

Option 3 ( si choix de Option 1 lnnbm ou lwnbm) :

	nombre de page html dans le dossier html ( en plus de la page index.html)
 	
	
pour crée votre nouveau projet.


Vous pouvez aussi crée un alias pour racourcir encore le code

 	nano ~/.bashrc

Puis ajouter la ligne 

	alias votre_alias='/chemin_vers_le_script/create_temp_w.sh'

Relancer a nouveau bashrc pour prendre en compte la modification :

	source ~/.bashrc

vous pouvez maintenant exécuter la commande 

 	votre_alias option1 option2 option3



V1.0.0
