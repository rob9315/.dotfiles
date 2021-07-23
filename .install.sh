# install utilities and packages for which there is a config
doas emerge -ND git stow zsh gentoo-zsh-completions zsh-completions alacritty dwm st dmenu vscode doas fortune-mod papirus-icon-theme neofetch

# clone this repo
git clone https://github.com/rob9315/.dotfiles ~/.dotfiles
git submodule update --init

sh ~/.dotfiles/.update.sh
