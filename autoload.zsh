export AUTOLOAD=$ZSH/autoload

# load functions
for i in $AUTOLOAD/* ; do
    if [ -r "$i" ]; then
        . $i
    fi
done
