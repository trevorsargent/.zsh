export PLUGINS=$ZSH/plugins


function loadPlugin {
	DIR=$1
	URL=$2
	FILE=$3

	if [ ! -d $PLUGINS/$DIR ]; then
		echo "DOWNLOADING $DIR"
		git submodule add $URL "$PLUGINS/$DIR"
	else 
		cd $PLUGINS/$DIR
		echo "UPDATING $DIR"
		git pull
	fi

	source "$PLUGINS/$DIR/$FILE"
}

loadPlugin zsh-z git@github.com:agkozak/zsh-z.git zsh-z.plugin.zsh

