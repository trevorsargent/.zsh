export PLUGINS=$ZSH/plugins


function loadPlugin {
	DIR=$1
	URL=$2
	FILE=$3

	if [ ! -d $PLUGINS/$DIR ]; then
		cd $ZSH
		git submodule add -f $URL "$PLUGINS/$DIR" >> /dev/null
		cd
	else 
		D="$PWD"
		cd $PLUGINS/$DIR
		git pull >> /dev/null
		cd "$D"
	fi

	source "$PLUGINS/$DIR/$FILE"
}

loadPlugin zsh-z git@github.com:agkozak/zsh-z.git zsh-z.plugin.zsh
loadPlugin zsh-nvm git@github.com:lukechilds/zsh-nvm.git zsh-nvm.plugin.zsh