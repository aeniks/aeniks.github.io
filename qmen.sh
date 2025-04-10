
function menu () {
enjoy!\n'$c2'\n\n\n\n['$cyan'Q'$re']uit\n\n\n\n' | less -Rr --use-color --no-histdups --incsearch --file-size --chop-long-lines -JR --use-color --tilde --quotes=c;     };     checkbox SELECTED "$OPTIONS_STRING";     for i in "${!SELECTED[@]}";     do         if [ "${SELECTED[$i]}" == "true" ]; then             CHECKED+=("${OPTIONS_VALUESfunction menu () {                                                                                                                                                                                                                                                                                                                                 enjoy!\n'$c2'\n\n\n\n['$cyan'Q'$re']uit\n\n\n\n' | less -Rr --use-color --no-histdups --incsearch --file-size --chop-long-lines -JR --use-color --tilde --quotes=c;     };     checkbox SELECTED "$OPTIONS_STRING";     for i in "${!SELECTED[@]}";     do         if [ "${SELECTED[$i]}" == "true" ]; then             CHECKED+=("${OPTIONS_VALUESfunction menu () {                                                                                                                                                                                                                                                                                                                                     olpwd="$PWD";                                                                                                                                                                                                                                                                                                                                      size=($(stty size));                                                                                                                                                                                                                                                                                                                               for i in $(seq $size);                                                                                                                                                                                                                                                                                                                             do
        echo;
    done;
    echo -ne '\e[s\e[H\e[J';
    green='\e[92m';
    cyan='\e[36m';
    re='\e[0m';
    dim='\e[2m';
    bold='\e[1m';
    c2='\e[36m--\e[0m';
    command=bash;
    [ "$2" ] && command="$2";
    hello=hello;
    [ $3 ] && hello=$3;
    dots="$(for i in $(seq $(($(stty size | tail -c4) - 11)));
do
    echo -ne .;
done)";
    echo -e "$re -------------------  ${green}$hello${re}  --------------------------
 ------------------------------------------------------
 -- [${dim} ^ v ${re}]$dim$cyan Choose${re} ---- [${dim}a${re}]$dim$cyan Select all${re} ---- [${dim}h${re}]$dim$cyan Help${re} --
 -- [${dim}Enter${re}]$dim$cyan Select${re} ---- [${dim}c${re}]$dim$cyan Confirm${re} ------- [${dim}q${re}]$dim$cyan Exit${re} -- ";
    unset OPTIONS_VALUES OPTIONS_STRING SELECTED CHECKED OPTIONS_LABELS ov1 cd;
    if [[ -n $1 ]]; then
        cd $1;
        OPTIONS_VALUES=($(ls -p | grep -v /));
    else
        OPTIONS_VALUES=($(ls -p $PWD/$1));
    fi;
    if [[ -n $4 ]]; then
        for i in ${OPTIONS_VALUES[@]};
        do
            OPTIONS_LABELS+=("\e[2m $($4 "$i") ");
        done;
    else
        for i in ${OPTIONS_VALUES[@]};
        do
            ft=$(file $i --mime-type -b | head -c4);
            if [[ $ft == "text" ]]; then
                OPTIONS_LABELS+=("\e[2m $(sed -n 2p $i | tr -s ';()\\' ' ' | cut -c-${size[1]}) ");
            else
                OPTIONS_LABELS+=("\e[2m $(file -b $i | cut -c-${size[1]}) ");
            fi;
        done;
        echo -e "\e[0J";
    fi;
    for i in "${!OPTIONS_VALUES[@]}";
    do
        OPTIONS_STRING+="$dots\e[6G "${OPTIONS_VALUES[$i]%/$PWD/}" \e[22G ${OPTIONS_LABELS[$i]};";
    done;
    OPTIONS_STRING+="\e[1K\n\e[6G\e[1m${cyan} Confirm";
    function checkbox ()