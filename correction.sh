#!/bin/bash

echo "Quel projet voulez-vous corriger ?"
read nameProject
norm=$(norminette -R CheckForbiddenSourceHeader | grep Error: | wc -l)
if [ "$norm" -eq 0 ]; then
	echo "Pas de problemes de Norm !"
	make
else
	echo "Problemes de NORM !"
fi
