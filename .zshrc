# Path to your oh-my-zsh installation.
export ZSH="/home/aaravconsole/.oh-my-zsh"

#plugins
plugins=(vscode sudo git bgnotify zsh-autosuggestions z zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Starship config

#Set terminal title
function set_win_title(){
    echo -ne "\033]0; aarav-console@1aM \007"
       
}
precmd_functions+=(set_win_title) 


#init starship
eval "$(starship init zsh)"

