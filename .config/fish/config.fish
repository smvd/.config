if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.script
fish_add_path ~/.local/bin

alias ls='lsd'
alias cat='bat'
alias fetch='gxrfetch'
alias ga='git add .'
alias gc='git commit -m '
alias gp='git push'
