if status is-interactive
# Commands to run in interactive sessions can go here
end

set -gx EDITOR 'code --wait'

alias dev="cd ~/Development"
alias p="cd ~/Development/polars-cloud"
alias pf="cd ~/Development/polars-cloud/frontend"
alias l="eza -la"
alias docker="orb docker"

abbr -a cm chezmoi
