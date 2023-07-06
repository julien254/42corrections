# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    corrections.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdetre <julien.detre.dev@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/05 13:43:07 by jdetre            #+#    #+#              #
#    Updated: 2023/07/06 11:53:31 by jdetre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

echo "Quel projet voulez-vous corriger ?"
read nameProject
norm=$(norminette -R CheckForbiddenSourceHeader | grep Error: | wc -l)
if [ "$norm" -eq 0 ]; then
	echo "\033[5;31mPas de problemes de Norm !\033[0m"
	sleep 3
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
