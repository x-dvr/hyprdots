set -g fish_greeting

if status is-interactive
    starship init fish | source
    eval $(ssh-agent -c)
    ssh-add
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

alias cat='bat'
alias vi='nvim'
alias vim='nvim'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

set -Ux EDITOR nvim
set -Ux VISUAL code

set -Ux GOPATH $HOME/.go
set -Ux GOBIN $HOME/.go/bin

set -U fish_user_paths $GOBIN $fish_user_paths
