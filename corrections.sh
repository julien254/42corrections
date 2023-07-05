#!/bin/bash

echo "Quel projet voulez-vous corriger ?"
read nameProject
norm=$(norminette -R CheckForbiddenSourceHeader | grep Error: | wc -l)
if [ "$norm" -eq 0 ]; then
	echo "Pas de problemes de Norm !"
	mkdir "${nameProject}_corrections"
	cd "${nameProject}_corrections/"
	git init
	git config core.sparseCheckout true
	echo "$nameProject" >> .git/info/sparse-checkout
	git remote add origin https://github.com/julien254/42corrections.git
	git pull origin main
	cd "${nameProject}/ex00/"
	make
else
	echo "Problemes de NORM !"
fi
