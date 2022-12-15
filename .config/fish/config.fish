if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.script
fish_add_path ~/.local/bin
fish_add_path ~/tizen-studio/package-manager
fish_add_path /usr/local/i386elfgcc/bin/

alias sl='ls'

alias ls='lsd'
alias cat='bat'
alias fetch='gxrfetch'
alias ping='gping'
alias top='btop'
alias curl='curlie'

alias make='make -j4'

alias ga='git add .'
alias gc='git commit -m '
alias gp='git push'

alias ma='micro *'
alias m='micro'
alias md='md-to-pdf'
