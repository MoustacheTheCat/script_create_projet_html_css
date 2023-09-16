# script_create_with_git_clone

Crée le scrip dans ./bin :

	sudo touch create_with_git_clone.sh 

Ouvre le fichier create_new_projet_html.sh

	sudo nano  create_with_git_clone.sh 

Puis copier le code dans le fichier create_projet_html_css.sh :

	  function create_with_git_clone() {
        local name="$1"
        local repository="$2"

 	# nnb -> not nav bar
        if [ "$repository" = "nnb" ];then  
                git clone https://github.com/remplacer_par_votre_depot_git.git  "$name"
	# nnb -> with nav bar
        elif [ "$repository" = "wnb" ];then
                git clone https://github.com/remplacer_par_votre_depot_git.git "$name"
        fi
    }
    # Utilisation de la fonction avec une option et un nom de projet en argument
    create_with_git_clone "$1" "$2"



Rendre le fichier executable:

	sudo chmod +x create_with_git_clone.sh

Editer le PATH pour rendre le fichier utilisable :
	
	sudo nano ~/.bashrc

Ajouter cette ligne a la fin du fichier bashrc (penser a modifier selon l’emplacement de votre dossier bin vis àvis de la racine) :

	export PATH="$PATH:$./bin"

Relancer bashrc pour prendre en compte la modification :

	source ~/.bashrc


vous pouvez maintenant exécuter la commande 

	create_with_git_clone.sh  ‘nom du projet’ 'option choisit' nnb[not nav bar] wnb[with nav bar]

pour crée votre nouveau projet.

V1.0.0
