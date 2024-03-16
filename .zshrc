# aliases
alias gl='git pull'
alias gp='git push'
alias gsw='git switch'
alias ll='ls -lh'
alias py="python3"

unset zle_bracketed_paste

# gpg
export GPG_TTY=$(tty)

autoload -U compinit; compinit

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

source <(pkgx --shellcode)  #docs.pkgx.sh/shellcode

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
