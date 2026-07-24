if status is-interactive
# Commands to run in interactive sessions can go here
end

set -gx EDITOR 'code --wait'
set -gx PCLI_SCRIPTS_DIRECTORY /Users/kevin/Development/polars-scripts/

abbr -a dev "cd ~/Development"
abbr -a p "cd ~/Development/polars-cloud"
abbr -a pf "cd ~/Development/polars-cloud/frontend"
abbr -a l "eza -la"
abbr -a cm chezmoi

zoxide init fish | source

