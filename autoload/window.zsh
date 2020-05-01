
function set_win_title(){
		D="$(echo $PWD | rev| cut -d'/' -f1 | rev)";
    echo -ne "\033]0;$D\007";
		if [ $D = 'trev' ]; then 
    	echo -ne "\033]0;~\007";
		fi
}

precmd_functions+=(set_win_title)

