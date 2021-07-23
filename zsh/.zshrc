# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH="$HOME/.zsh/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  "zsh-autosuggestions"
  "zsh-history-substring-search"
  "zsh-syntax-highlighting"
  "lol"
)

source ~/.zsh/.oh-my-zsh/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! $(which exa) =~ "^exa not found$" ]] \
  && alias l="exa -la" && alias la="exa -a" && alias ls="exa" \
  || alias l="ls -la --color" || alias la="ls -a --color" || alias ls="ls --color"

