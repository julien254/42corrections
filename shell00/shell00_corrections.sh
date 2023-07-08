# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    shell00_corrections.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdetre <julien.detre.dev@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/08 17:31:32 by jdetre            #+#    #+#              #
#    Updated: 2023/07/08 22:30:17 by jdetre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

#__________________________VARIABLE________________________________

etoile="$(echo "\342\230\205")"
coeur="$(echo "\342\231\245")"
check="$(echo "\342\234\223")"
croix="$(echo "\342\230\226")"
rouge="\033[31m"
vert="\033[32m"
resetcolor="\033[0m"

#_______________________HEADER TESTER 42 PROJECT__________________________

echo "\033[1;33;40m$etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile \033[0m"

echo "\033[1;33;40m             .___________. _______     _______.___________. _______ .______                 \033[0m"
echo "\033[1;33;40m$etoile            |           ||   ____|   /       |           ||   ____||   _  \              $etoile \033[0m"
echo "\033[1;33;40m             \`---|  |----\`|  |__     |   (----\`---|  |----\`|  |__   |  |_)  |               \033[0m"
echo "\033[1;33;40m$etoile                |  |     |   __|     \   \       |  |     |   __|  |      /              $etoile \033[0m"
echo "\033[1;33;40m                 |  |     |  |____.----)   |      |  |     |  |____ |  | \ \----.           \033[0m"
echo "\033[1;33;40m$etoile                |__|     |_______|_______/       |__|     |_______|| _| \`._____|         $etoile \033[0m"
echo "\033[1;33;40m                                                                                            \033[0m"
echo "\033[1;33;40m$etoile                                       _  _     ___                                      $etoile \033[0m"
echo "\033[1;33;40m                                       | || |   |__ \                                       \033[0m"
echo "\033[1;33;40m$etoile                                      | || |_     ) |                                    $etoile \033[0m"
echo "\033[1;3;33;40m                      Wellcome to\033[0m\033[1;33;40m      |__   _|   / /                                       \033[0m"
echo "\033[1;33;40m$etoile                                         | |    / /_                                     $etoile \033[0m"
echo "\033[1;33;40m                                          |_|   |____|   \033[1;3;33;40mBy Jdetre@42angouleme              \033[0m"
echo "\033[1;33;40m$etoile                                                                                         $etoile \033[0m"
echo "\033[1;33;40m         .______   .______        ______          __   _______   ______ .___________.       \033[0m"
echo "\033[1;33;40m$etoile        |   _  \  |   _  \      /  __  \        |  | |   ____| /      ||           |     $etoile \033[0m"
echo "\033[1;33;40m         |  |_)  | |  |_)  |    |  |  |  |       |  | |  |__   |  ,----'\`---|  |----\`       \033[0m"
echo "\033[1;33;40m$etoile        |   ___/  |      /     |  |  |  | .--.  |  | |   __|  |  |         |  |          $etoile \033[0m"
echo "\033[1;33;40m         |  |      |  |\  \----.|  \`--'  | |  \`--'  | |  |____ |  \`----.    |  |            \033[0m"
echo "\033[1;33;40m$etoile        | _|      | _| \`._____| \______/   \______/  |_______| \______|    |__|\"shell00\" $etoile \033[0m"
echo "\033[1;33;40m                                                                                            \033[0m"
echo "\033[1;33;40m$etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile \033[0m"
sleep 2;

#____________________WELLCOME______________________________

delay=0.03
echo "\n\n"
text="Bienvenue dans le testeur de projet 42! $rouge$coeur $coeur$resetcolor"

i=1
while [ "$i" -le "${#text}" ]; do
	echo -n "$(echo "$text" | cut -c $i)"
    sleep "$delay"
    i=$(($i + 1))
done

echo "\n"
sleep 1
text="Lancement du testeur pour le projet shell00"

i=1
while [ "$i" -le "${#text}" ]; do
	echo -n "$(echo "$text" | cut -c $i)"
    sleep "$delay"
    i=$(($i + 1))
done

sleep 1;echo -n ".";sleep 1;echo -n ".";sleep 1;echo ".";sleep 1

#_____________________EX00/Z_______________________

result=$(cat -e ../../ex00/z)
echo ${result}
if [ ${result} = "Z\$" ]; then
	echo "\nEx00/z : 1$vert$check$resetcolor\n"
else
	echo "\nEx00/z : 0rouge$croix$resetcolor\n"
fi
