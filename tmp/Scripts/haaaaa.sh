#!/bin/bash
# figlet -f DOS_Rebel -c -w $COLUMNS "hello!"; 
## 
halo() {
printf "\e[?25l\e[$((LINES/6))H";
h1=' █████               ████  ████           ███'
h2='░░███               ░░███ ░░███          ░███'
h3=' ░███████    ██████  ░███  ░███   ██████ ░███'
h4=' ░███░░███  ███░░███ ░███  ░███  ███░░███░███'
h5=' ░███ ░███ ░███████  ░███  ░███ ░███ ░███░███'
h6=' ░███ ░███ ░███░░░   ░███  ░███ ░███ ░███░░░ '
h7=' ████ █████░░██████  █████ █████░░██████  ███'
h8='░░░░ ░░░░░  ░░░░░░  ░░░░░ ░░░░░  ░░░░░░  ░░░ ' 
mm="$((COLUMNS/2-26))"; 
for i in {1..111}; do printf "\e[38;5;${i}m\n\n\n\n"; 
printf "\e[${mm}G$h1\n\e[${mm}G$h2\n\e[${mm}G$h3\n\e[${mm}G$h4\n\e[${mm}G$h5\n\e[${mm}G$h6\n\e[${mm}G$h7\n\e[${mm}G$h8"
printf "\e[10A"; read -n1 -t.1 -res x; 
[ "$x" ]&&break; done; 
for i in {111..222}; do printf "\e[38;5;${i}m\n\n\n\n"; 
printf "\e[$((COLUMNS/2-RANDOM%6))G$halo"; 
printf "\e[14A"; read -n1 -t.1 -res x; 
printf "\e[$((RANDOM%6))A\e[$((RANDOM%2))B"
[ "$x" ]&&break; done; 
printf "\e[?25h\e[8B\n\n\n\n\n\n\e[$((COLUMNS/2-16))G";
read -n1 -srep "  ok [Y/n]" "f"; [ "$f" ]||\
printf "\e[$((COLUMNS/2-16))G  \e[7m   ok   \e[0m \n\n\n\n\n\n"
}



