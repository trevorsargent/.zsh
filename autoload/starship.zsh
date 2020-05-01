# Starship 
export STARSHIP_CONFIG=$CONFIGS/starship.toml

brew list starship
if [ ! $? -eq 0 ]; then
	brew install starship
fi

eval "$(starship init zsh)"