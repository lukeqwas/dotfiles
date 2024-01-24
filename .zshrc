# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias mzh='vim ~/.zshrc'
alias szh='source ~/.zshrc'
alias gs='git status'
alias gc='git checkout'
alias mnv='cd ~/.config/nvim && nvim .'
