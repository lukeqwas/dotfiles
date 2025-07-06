# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"


plugins=(git macos pip python git-prompt copypath zsh-autosuggestions golang)
ZSH_THEME="eastwood"

# eval "$(fzf --zsh)"

#export PATH="/usr/local/opt/llvm/bin:$PATH"
source $ZSH/oh-my-zsh.sh
alias gs='git status'
alias gc='git checkout'
alias gp='git pull -r'
alias gtree='git log --oneline --graph --decorate --all'
export PATH="/Users/lss/.local/share/solana/install/active_release/bin:$PATH"
export PATH="~/scripts:$PATH"

alias vim='nvim'
alias dcu='docker-compose up'
alias dcd='docker-compose down && docker rmi -f $(docker images -aq)'
alias t3='tree -d -L 3'
alias goland='open -na "GoLand.app"'
alias mzh='vim ~/.zshrc'
alias szh='source ~/.zshrc'
alias mnv='cd ~/.config/nvim/ && nvim .'
alias python='python3'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias mclaude='cd ~/workspace/tools/Claude-Code-Usage-Monitor && python ccusage_monitor.py'

export PATH="/Users/lukestoltenberg/.local/share/solana/install/active_release/bin:$PATH"
alias mghost='vim "/Users/lukestoltenberg/Library/Application Support/com.mitchellh.ghostty/config"'
