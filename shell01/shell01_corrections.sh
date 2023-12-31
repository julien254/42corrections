# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    shell00_corrections.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ${user} <julien.detre.dev@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/08 17:31:32 by ${user}            #+#    #+#              #
#    Updated: 2023/07/10 13:16:45 by jdetre           ###   ########.fr        #
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

point=0
delay=0.03
echo "\n\n"
text="Bienvenue dans le testeur de projet 42 v1.0! $rouge$coeur $coeur$resetcolor"

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
	point=$((point + 1))
else
	echo "\n\nEx00/z : $rouge$croix$resetcolor\n"
fi

#_____________________EX01/TESTSHELL00___________________

years=$(date +%Y)
user=$(echo "$LOGNAME")

tar -xf ../../ex01/testShell00.tar
result=$(ls -l testShell00 | xargs)

if [ "${result}" = "-r--r-xr-x 1 $user ${years}_angouleme 40 Jun 1 23:42 testShell00" ]; then
	echo "Ex01/testShell00 : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
elif [ "${result}" = "-r--r-xr-x 1 $user ${years}_angouleme 40 Jun 1 ${years} testShell00" ]; then
	echo "Ex01/testShell00 : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
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
str="total $total drwx--xr-x 2 ${user} ${years}_angouleme $octet1 Jun 1 20:47 test0 -rwx--xr-- 1 ${user} ${years}_angouleme 4 Jun 1 21:46 test1 dr-x---r-- 2 ${user} ${years}_angouleme $octet2 Jun 1 22:45 test2 -r-----r-- 2 ${user} ${years}_angouleme 1 Jun 1 23:44 test3 -rw-r----x 1 ${user} ${years}_angouleme 2 Jun 1 23:43 test4 -r-----r-- 2 ${user} ${years}_angouleme 1 Jun 1 23:44 test5 lrwxrwxrwx 1 ${user} ${years}_angouleme 5 Jun 1 22:20 test6 -> test0"
if [ "${result}" = "${str}" ]; then
	echo "Ex02/exo2.tar : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
elif [ "${result}" = "total 24 drwx--xr-x 2 ${user} ${years}_angouleme 4096 Jun 1 ${years} test0 -rwx--xr-- 1 ${user} ${years}_angouleme 4 Jun 1 ${years} test1 dr-x---r-- 2 ${user} ${years}_angouleme 4096 Jun 1 ${years} test2 -r-----r-- 2 ${user} ${years}_angouleme 1 Jun 1 ${years} test3 -rw-r----x 1 ${user} ${years}_angouleme 2 Jun 1 ${years} test4 -r-----r-- 2 ${user} ${years}_angouleme 1 Jun 1 ${years} test5 lrwxrwxrwx 1 ${user} ${years}_angouleme 5 Jun 1 ${years} test6 -> test0" ]; then
	echo "Ex02/exo2.tar : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex02/exo2.tar : $rouge$croix$resetcolor\n"
fi

#____________________EX03/CONNECTE-MOI________________

id_rsa=$(cat ~/.ssh/id_rsa.pub)
result=$(cat ../../ex03/id_rsa_pub)

if [ "${result}" = "${id_rsa}" ]; then
	echo "Ex03/id_rsa_pub : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex03/id_rsa_pub : $rouge$croix$resetcolor\n"
fi

#____________________EX04/midLS______________________

midLS=$(ls -tmp)
result=$(sh ../../ex04/midLS)

if [ "${result}" = "${midLS}" ]; then
	echo "Ex04/midLS : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex04/midLS : $rouge$croix$resetcolor\n"
fi

#____________________EX05/GIT_COMMIT_________________

commit=$(git log --format=%H -n 5)
result=$(sh ../../ex05/git_commit.sh)

if [ "${result}" = "${commit}" ]; then
	echo "Ex05/git_commit : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex05/git_commit : $rouge$croix$resetcolor\n"
fi

#____________________EX06/GIT_IGNORE__________________

touch test.lol test2.lol
echo lol > test.lol
echo lol > test2.lol
gitignore=$(git ls-files --others --ignored --exclude-standard)
result=$(sh ../../ex06/git_ignore.sh)
if [ "${result}" = "${gitignore}" ]; then
	echo "Ex06/git_ignore : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex06/git_ignore : $rouge$croix$resetcolor\n"
fi

#____________________EX07/DIFF_______________________

diff b ../../ex07/b
if [ $? -eq 0 ]; then
	echo "Ex07/diff : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex07/diff : $rouge$croix$resetcolor\n"
fi

#____________________EX08/CLEAN______________________

liste=$(find . -type f \( -name '*~' -o -name '#*#' \) -print)
result=$(sh ../../ex08/clean)
if [ "${result}" = "${liste}" ] && [ $(ls -l | grep -e test8 -e test9 | wc -l) -eq 0 ] && [ $(ls -l | grep test10 | wc -l) -eq 1 ] && [ $(ls -l test10 | grep -e test8 -e test9 | wc -l) -eq 0 ]; then
	echo "Ex08/clean : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex08/clean : $rouge$croix$resetcolor\n"
fi

#____________________EX09/FT_MAGIC__________________

diff ft_magic ../../ex09/ft_magic >/dev/null
if [ $? -eq 0 ]; then
	echo "Ex09/ft_magic : $vert$tcheck$resetcolor\n"
	point=$((point + 1))
else
	echo "Ex09/ft_magic : $rouge$croix$resetcolor\n"
fi

#____________________ENDING_________________________

if [ $point -eq 10 ]; then
	echo "\033[1;3;5;32mFelicitation ! c'est un sans faute !$resetcolor"
else
	echo "\033[1mTu as $point/10 exercices de bon !$resetcolor"
fi

echo "N'hesite pas a me faire un retour sur d'éventuels bugs tels qu'ils soient.\nEt n'oublie pas que le testeur est la juste pour te donner un coup de pouce, il ne dispense pas de lire et de comprendre le code et c'est important de ne pas se fier a une unique source. Bonne piscine !!!"
