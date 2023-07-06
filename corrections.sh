# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    corrections.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdetre <julien.detre.dev@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/05 13:43:07 by jdetre            #+#    #+#              #
#    Updated: 2023/07/06 12:18:48 by jdetre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

# Recuperation du nom du projet

echo "Quel projet voulez-vous corriger ?"
read nameProject

# Verification de la NORM

norm=$(norminette -R CheckForbiddenSourceHeader | grep Error: | wc -l)

# Creation du fichier clean

echo "rm -rf c00_corrections/ corrections.sh clean.sh" > clean.sh

# Lancement du test si pas d'erreur de NORM

if [ "$norm" -eq 0 ]; then
	echo "\033[5;32mPas de problemes de Norm !\033[0m"
	sleep 3;
	mkdir "${nameProject}_corrections"
	cd "${nameProject}_corrections/"
	git init
	git config core.sparseCheckout true
	echo "$nameProject" >> .git/info/sparse-checkout
	git remote add origin https://github.com/julien254/42corrections.git
	git pull origin main
	cd "${nameProject}"
	clear
	sh "${nameProject}_corrections.sh"
elif [ "$norm" -eq 1 ]; then
	echo "Il y a 1 Probleme de NORM !"
else
	echo "Il y a $norm Problemes de NORM !"
fi
