#!/bin/bash
#### installer 



intro12() {
printf %b "\n\t hello $(id -nu)!\n"; 
unset s; 
[ "$(id -u)" = 1000 ]&& s="sudo"; 
local size=($(stty size)) 
#s=sudo; 
#[ "$SUDO_UID" ]&& s=' ';
local dots="$(for i in $(seq $(($(stty size|tail -c4) - 11))); do echo -ne "·"; done;)";
local c2='\e[36m--\e[0m' re='\e[0m' dim='\e[2m' bold='\e[1m' green='\e[92m' cyan='\e[36m'; 
[ -z "$LINES" ]&& LINES="${size}"; [ -z "$COLUMNS" ]&& COLUMNS="${size[1]}"; 
dl="${PWD}"; 
qq="${HOME}/\e[96mqq"; 
####
} 
alias br='printf "\n"'; alias pp='printf %b '; 
##
##
printf "\e[0m -- hello ! \n"; 
roll() { 
#unset ynoo; 
[ "$ynoo" = "q" ]&& rollend; 
prompt=" ${@}"; 
for i in $(seq ${#prompt}); do 
printf %b "${prompt:${i}:1}"; 
sleep .004; done; sleep .04
} 
##
yno12() { 

[ "$ynoo" = "q" ]&& rollend; 
printf %b '\e[2m[\e[0mY\e[2m/\e[0mn\e[2m]\e[0m '; 
read -rsn1 "ynoo"; 
[ "$ynoo" = "q" ]&& return&& break; 
[ -z "$ynoo" ]&& printf %b "Yes - OK"&& break 2>/dev/null|| return 2>/dev/null; } 

rollups
unset qq_up qq_bash qq_dl; sleep 0.04; 
#cat ./hello.sh; 
printf "\n\e[12;8H"; 
printf "\n\e[8G"; roll 'update system? '; yno12 && printf -v _updsys "y"; 
printf "\n\e[8G"; roll 'update system? '; yno12 && printf -v rollupdate "y"; 
printf "\n\e[8G"; roll 'update system? '; yno12 && printf -v rollupdate "y"; 
printf "\n\e[8G"; roll 'update system? '; yno12 && printf -v rollupdate "y"; 


printf "\n\e[8G"; roll 'install gh?? '; yno12&& _gh=y




#printf ' \t'&& ynoo&& qq_up=y; 
printf "\n\e[8G"; roll 'download qq? '; 

#printf ' \t'&& ynoo&& qq_dl=y&&\ 
printf "\n\e[8G"&& roll 'whereto dl? '&& printf ' \t'&&read -rep "" -i "$HOME" "dl"&& qq="${dl}/qq";
printf "\n\e[8G"; roll 'qq folder?: '&& printf ' \t'&&read -rep "" -i "$qq" "qq"; 
printf "\n\e[8G"; roll 'auto start? '&& printf ' \t'&&ynoo&& qq_bash=y; 
printf "\n\n\n\n"; rollups 4; 

[ -z "$qq_up" ]&& $s apt update; apt -y upgrade; 
[ -z "$qq_up" ]&& $s apt install -y git wget curl openssl; 
[ -z "$qq_dl" ]&& git clone https://github.com/aeniks/qq "${dl}/qq"; 
[ -z "$qq_bash" ]&& printf "\nexport qq="'"'${qq}'"'"  \nqq_hf="'"'${dl}'"'"\n";  
#>> "${HOME}/.bashrc"; 
# $s cp $qq /etc/ -R; 
# printf "\nexport qq=/etc/qq\n" >> /etc/bash.bashrc; 
##[ "${qq:(-1)}" = '/' ] last /
##[ "${qq/#*\/" = "qq" ] last qq 
rollups 
printf "\e[0mggaa"; 
rolldowns 
[ "qq_up" ]&& (echo "qq_up"; cd "$qq"; ); . start.sh; 

} 
#
#
unset ynoo; 
break 2>/dev/null; 
return 2>/dev/null; 
rollend() { 
 echo gg
break 2>/dev/null&& return;  

 echo gg
return 2>/dev/null;
} 
 

rollups() { 
printf "\e[8m oooo"; ruru=$((LINES-8)); [ "${1}" ]&&ruru="${1}"; 
for i in $(seq "${ruru}"); do printf "\n"; sleep 0.04; done; printf "\e[0m\t helo\n"; 
}; 
rolldowns() { printf "\e[8m"; ruru=$((LINES-8)); [ "${1}" ]&&ruru="${1}"; 
for i in $(seq "${ruru}"); do printf "\e[A"; sleep 0.04; done; printf "\e[0m"; }; 
##


intro12; break 
printf "\n\ngg\n\n"; cat hello.sh; 
#
#

##
###################
