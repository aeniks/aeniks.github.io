
clear; 
for i in $(seq $((LINES / 2 - 4))); do printf %b "\n"; done; 
wotd_m; 
for i in $(seq $((LINES / 2 + 2))); do printf %b "\n"; done; 

