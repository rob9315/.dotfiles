# everything with `..` in front has an absolute path for stow and needs permissions to be run
echo ~/.dotfiles/* | tr " " "\n" | sed 's-/home/'"${USER}"'/\.dotfiles/--' | xargs -l1 stow -t "/home/${USER}" -d "/home/${USER}/.dotfiles"
# echo ~/.dotfiles/..* | tr " " "\n" | sed 's-/home/'"${USER}"'/\.dotfiles/\.\.$--' | sed 's-/home/'"${USER}"'\/.dotfiles/--' | xargs -l1 doas stow -t "/" -d "/home/${USER}/.dotfiles"
