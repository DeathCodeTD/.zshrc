# Use powerline
USE_POWERLINE="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi
# ~/.zshrc

eval "$(starship init zsh)"

alias clear='clear; colorscript random'
alias ls='exa -la'
alias cat='bat'
alias icat="kitty +kitten icat"
alias grep='rg'
alias find='fd'

rxfetch
