# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    shell00_corrections.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdetre <julien.detre.dev@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/08 17:31:32 by jdetre            #+#    #+#              #
#    Updated: 2023/07/09 17:19:19 by jdetre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

#__________________________VARIABLE________________________________

etoile="$(echo "\342\230\205")"
coeur="$(echo "\342\231\245")"
tcheck="$(echo "\342\234\223")"
tcheck="✔"
croix="$(echo "\342\234\227")"
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

if [ ${result} = "Z\$" ]; then
	echo "\n\nEx00/z : $vert$tcheck$resetcolor\n"
else
	echo "\n\nEx00/z : $rouge$croix$resetcolor\n"
fi

#_____________________EX01/TESTSHELL00___________________

years=$(date +%Y)
user=$(echo "$USER")

tar -xf ../../ex01/testShell00.tar
result=$(ls -l testShell00 | xargs)

if [ "${result}" = "-r--r-xr-x 1 $user $user 40 juin 1 23:42 testShell00" ]; then
	echo "Ex01/testShell00 : $vert$tcheck$resetcolor\n"
elif [ "${result}" = "-r--r-xr-x 1 $user $user 40 juin 1 $years testShell00" ]; then
	echo "Ex01/testShell00 : $vert$tcheck$resetcolor\n"
else
	echo "Ex01/testShell00 : $rouge$croix$resetcolor\n"
fi

#____________________EX02/OWI, EMCORE...__________________

mkdir exo2
tar -xf ../../ex02/exo2.tar -C exo2/
total=$(ls -l exo2 | xargs | awk '{print $2}')
octet1=$(ls -l exo2 | xargs | awk '{print $7}')
octet2=$(ls -l exo2 | xargs | awk '{print $25}')
result=$(ls -l exo2 | xargs)

if [ "${result}" = "total $total drwx--xr-x 2 jdetre jdetre $octet1 juin 1 20:47 test0 -rwx--xr-- 1 jdetre jdetre 4 juin 1 21:46 test1 dr-x---r-- 2 jdetre jdetre $octet2 juin 1 22:45 test2 -r-----r-- 2 jdetre jdetre 1 juin 1 23:44 test3 -rw-r----x 1 jdetre jdetre 2 juin 1 23:43 test4 -r-----r-- 2 jdetre jdetre 1 juin 1 23:44 test5 lrwxrwxrwx 1 jdetre jdetre 5 juin 1 22:20 test6 -> test0" ]; then
	echo "Ex02/exo2.tar : $vert$tcheck$resetcolor\n"
elif [ "${result}" = "total 24 drwx--xr-x 2 jdetre jdetre 4096 juin 1 $years test0 -rwx--xr-- 1 jdetre jdetre 4 juin 1 $years test1 dr-x---r-- 2 jdetre jdetre 4096 juin 1 $years test2 -r-----r-- 2 jdetre jdetre 1 juin 1 $years test3 -rw-r----x 1 jdetre jdetre 2 juin 1 $years test4 -r-----r-- 2 jdetre jdetre 1 juin 1 $years test5 lrwxrwxrwx 1 jdetre jdetre 5 juin 1 $years test6 -> test0" ]; then
	echo "Ex02/exo2.tar : $vert$tcheck$resetcolor\n"
else
	echo "Ex02/exo2.tar : $rouge$croix$resetcolor\n"
fi

#____________________EX03/CONNECTE-MOI________________

id_rsa=$(cat ~/.ssh/id_rsa.pub)
result=$(cat ../../ex03/id_rsa_pub)

if [ "${result}" = "${id_rsa}" ]; then
	echo "Ex03/id_rsa_pub : $vert$tcheck$resetcolor\n"
else
	echo "Ex03/id_rsa_pub : $rouge$croix$resetcolor\n"
fi

#____________________EX04/midLS______________________

midLS=$(ls -tmp)
result=$(sh ../../ex04/midLS)

if [ "${result}" = "${midLS}" ]; then
	echo "Ex04/midLS : $vert$tcheck$resetcolor\n"
else
	echo "Ex04/midLS : $rouge$croix$resetcolor\n"
fi
