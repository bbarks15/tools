# Add everything in ~/.local/bin to path
export PATH="$PATH:$(du -L "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

remaps

# Set defaults
command -v nvim >/dev/null && export EDITOR="nvim" || export EDITOR="vim"
export FILE="ranger"
export BROWSER="firefox-developer-edition"
export TERMINAL="st"

