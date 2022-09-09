if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.script
fish_add_path ~/.local/bin

alias home='cd ~'
alias root='cd /'
alias boot='cd /boot'
alias config='cd ~/.config'
alias scripts='cd ~/.script'

alias ls='lsd'
alias cat='bat'
alias fetch='gxrfetch'
alias ping="gping"
alias top="btop"

alias ga='git add .'
alias gc='git commit -m '
alias gp='git push'

alias ma='micro *'
alias m='micro'
