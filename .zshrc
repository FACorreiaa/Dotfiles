if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#neofetch

export ZSH=$HOME/.oh-my-zsh
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export CARGO=$HOME/.cargo/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$CARGO
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="CaskaydiaCove Nerd Font"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting alias-finder aliases dotenv web-search yarn npm nvm golang)
#zsh-syntax-highlighting
source $ZSH/oh-my-zsh.sh

# User configuration
#export EDITOR='nvim'
export PATH="$HOME/.npm/bin:$PATH"

# Aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
echo "$(cat $HOME/banner)" | lolcat
# figlet -f standard "bashbunni" | lolcat
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
alias stream='cd ~/Documents/Hobbies/'
alias bb='cd ~/Documents/bashbunni'
alias notes='cd ~/Documents/Hobbies/dev-notebook'
alias config='nvim ~/.config/nvim/init.vim'
alias luaconf='nvim ~/.config/nvim/lua/bashbunni.lua'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

#work folders
alias cdbm='cd ~/beedeez-main/'
alias cdbs='cd ~/beedeez-server/'

#git alias
alias ga='git add'
alias gc='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'

#source /home/fernandocorreia/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_ALIAS_FINDER_AUTOMATIC=true

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias sourcetmux='tmux source ~/.tmux.conf'
source /Users/fernandocorreia/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
