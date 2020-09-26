# Starship 
export STARSHIP_CONFIG=$CONFIGS/starship.toml

brew list starship > /dev/null
if [ ! $? -eq 0 ]; then
	brew install starship >> /dev/null
fi

eval "$(starship init zsh)"