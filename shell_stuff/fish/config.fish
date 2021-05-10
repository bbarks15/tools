set fish_greeting

set -x PATH $PATH (du -L "$HOME/.local/bin/" | cut -f2 | paste -sd ':')

# SET BAT AS MANPAGER
set -x MANPAGER "sh -c 'col -bx | bat --theme base16 -l man -p'"

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        sleep 1 && exec startx -- -keeptty
    end
end

set -x FILE ranger
set -x TERMINAL st
set -x EDITOR nvim
set -x BROWSER firefox-developer-edition

set -x GTK_SCALE 2

# Aliases
# Use neovim for vimouif present.
command -v nvim >/dev/null && alias vim="nvim"; alias vimdiff="nvim -d"

alias c="compiler"
alias t="template"
alias run="compiler --run"
alias f="$FILE"
alias v="$EDITOR"
alias p="sudo pacman"
alias py="python -q"
alias x="chmod +x"
alias bc="bc -q"

alias cu="curl -O"
alias o="xdg-open"

alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkd="mkdir -pv"

alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

alias .. '..'
alias ... '../..'
alias .... '../../..'
alias ..... '../../../..'
alias ...... '../../../../..'

set -x FZF_DEFAULT_OPTS '--height 40% --layout reverse --no-info --border --color=16'
set -x FZF_ALT_C_OPTS "--preview 'tree -C {} | head -200'"

function cdd
    set -l dir (du -L --max-depth 2 ~/Documents | awk '{print $2}' | fzf --color=bw) && cd "$dir"
end
