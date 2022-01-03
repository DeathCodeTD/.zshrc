source ~/zsh-plugs/zsh-snap/znap.zsh
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

# plugins
znap source zsh-users/zsh-autosuggestions 
eval "$(starship init zsh)"

# aliases
alias clear='clear; colorscript random'
alias ls='exa -la'
alias cat='bat'
alias icat="kitty +kitten icat"
alias grep='rg'
alias find='fd'
alias getpath="command find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c"
alias cin="xclip -selection c"
alias count="xclip -selection clipboard -o"

#functions
fcd() {
  cd "$(command find -type d | fzf)"
}
open() {
  xdg-open "$(command find -type f | fzf)"
}
remove() {
  rm $(command ls | fzf -m | tr '\n' ' ' )
}
#commands
rxfetch
