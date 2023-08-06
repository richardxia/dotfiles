export PROMPT='%n@%m:%~%(!.#.$) '

# Use emacs shortcuts, even though zsh will default to vi ones if $EDITOR or
# $VISUAL is set to vi.
bindkey -e

[[ -e $HOME/.shell_interactive ]] && . $HOME/.shell_interactive
