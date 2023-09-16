function create_with_git_clone() {
        local name="$1"
	local repository="$2"

	if [ "$repository" = "nnb" ];then  
        	git clone https://adresse_de_votre_repository.git  "$name"
	elif [ "$repository" = "wnb" ];then
		git clone https://adresse_de_votre_repository.git "$name"
	fi
}
# Utilisation de la fonction avec un nom de projet en argument
create_with_git_clone "$1" "$2"

