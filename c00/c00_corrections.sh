#!/bin/sh

#__________________________VARIABLE________________________________

etoile="$(echo "\342\230\205")"

#_______________________HEADER TESTER 42 PROJECT__________________________

echo "\033[1;33;40m$etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile  $etoile \033[0m"

echo "\033[1;33;40m$etoile            .___________. _______     _______.___________. _______ .______               $etoile \033[0m"
echo "\033[1;33;40m$etoile            |           ||   ____|   /       |           ||   ____||   _  \              $etoile \033[0m"
echo "\033[1;33;40m$etoile            \`---|  |----\`|  |__     |   (----\`---|  |----\`|  |__   |  |_)  |             $etoile \033[0m"
echo "\033[1;33;40m$etoile                |  |     |   __|     \   \       |  |     |   __|  |      /              $etoile \033[0m"
echo "\033[1;33;40m$etoile                |  |     |  |____.----)   |      |  |     |  |____ |  | \ \----.         $etoile \033[0m"
echo "\033[1;33;40m$etoile                |__|     |_______|_______/       |__|     |_______|| _| \`._____|         $etoile \033[0m"
echo "\033[1;33;40m$etoile                                                                                         $etoile \033[0m"
echo "\033[1;33;40m$etoile                                       _  _     ___                                      $etoile \033[0m"
echo "\033[1;33;40m$etoile                                      | || |   |__ \                                     $etoile \033[0m"
echo "\033[1;33;40m$etoile                                      | || |_     ) |                                    $etoile \033[0m"
echo "\033[1;3;33;40m$etoile                     Wellcome to\033[0m\033[1;33;40m      |__   _|   / /                                     $etoile \033[0m"
echo "\033[1;33;40m$etoile                                         | |    / /_                                     $etoile \033[0m"
echo "\033[1;33;40m$etoile                                         |_|   |____|   \033[1;3;33;40mBy Jdetre@42angouleme            $etoile \033[0m"
echo "\033[1;33;40m$etoile                                                                                         $etoile \033[0m"
echo "\033[1;33;40m$etoile        .______   .______        ______          __   _______   ______ .___________.     $etoile \033[0m"
echo "\033[1;33;40m$etoile        |   _  \  |   _  \      /  __  \        |  | |   ____| /      ||           |     $etoile \033[0m"
echo "\033[1;33;40m$etoile        |  |_)  | |  |_)  |    |  |  |  |       |  | |  |__   |  ,----'\`---|  |----\`     $etoile \033[0m"
echo "\033[1;33;40m$etoile        |   ___/  |      /     |  |  |  | .--.  |  | |   __|  |  |         |  |          $etoile \033[0m"
echo "\033[1;33;40m$etoile        |  |      |  |\  \----.|  \`--'  | |  \`--'  | |  |____ |  \`----.    |  |          $etoile \033[0m"
echo "\033[1;33;40m$etoile        | _|      | _| \`._____| \______/   \______/  |_______| \______|    |__|   \"c00\"  $etoile \033[0m"
echo "\033[1;33;40m$etoile                                                                                         $etoile \033[0m"
echo "\033[1;33;40m$etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile $etoile \033[0m"
sleep 2;

#____________________WELLCOME______________________________

delay=0.03
echo "\n\n"
text="Bienvenue dans le testeur de projet 42!"

i=1
while [ "$i" -le "${#text}" ]; do
	echo -n "$(echo "$text" | cut -c $i)"
    sleep "$delay"
    i=$(($i + 1))
done

echo "\n"
sleep 1
text="Lancement du testeur pour le projet c00"

i=1
while [ "$i" -le "${#text}" ]; do
	echo -n "$(echo "$text" | cut -c $i)"
    sleep "$delay"
    i=$(($i + 1))
done

sleep 1;echo -n ".";sleep 1;echo -n ".";sleep 1;echo -n ".";sleep 1

#_____________________EX00/FT_PUTCHAR_______________________
