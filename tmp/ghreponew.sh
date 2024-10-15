#!/bin/bash
## github repo creater 
printf " gg $ghuser "
printf "\n\n\n\n\n\n\e[4A"; 
printf " $c2 new gh repo $c2 \n"; 
printf " $c2 name: "; read -re "repo"; printf "\t$bold$repo$re -- good name!\n"; 
printf " $c2 [1] = public \n $c2 [2] = private \n\t"; read -n1 -sre "pp"; 
if [ "$pp" = 1 ]; then pm="--public"; 
elif [ "$pp" = 2 ]; then p ="--private"; fi
####
printf "\n $repo in $pm \n"
####
gh repo create $repo $pm; cd $repo; 
####
git ini $repo; cd $repo; 

git remote add origin git@github.com:$ghuser/$repo.git
git branch -M main
git push --set-upstream "$repo" main
git push -u origin main

