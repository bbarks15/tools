set fish_greeting

set -x PATH $PATH (du -L "$HOME/.local/bin/" | cut -f2 | paste -sd ':')
 
# set -x FILE yazi
set -x TERMINAL kitty
set -x EDITOR nvim
# set -x BROWSER firefox-developer-edition

# Aliases
# Use neovim for vimouif present.
# set --export PATH $HOME/.local/share/bob/nvim-bin  $PATH
command -v nvim >/dev/null && alias vim="nvim"; alias vimdiff="nvim -d"

alias f="$FILE"
alias v="$EDITOR"
alias lg="lazygit"
# alias p="sudo pacman"
alias py="python -q"
alias o="xdg-open"

alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkd="mkdir -pv"

# alias ls="exa -h --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

set -x FZF_DEFAULT_OPTS '--height 40% --layout reverse --no-info --border --color=16'

function cdd
    set -l dir (du -L --max-depth 2 ~/Documents | awk '{print $2}' | fzf --color=bw) && cd "$dir"
end
