export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export BUN_DIR=$HOME/.data
export GIT_CONFIG=$XDG_CONFIG_HOME
export CARGO_HOME=$HOME/.data
export JAVA_USER_HOME=$HOME/.data
export MAGEFILE=$HOME/.data
export MONO_CONFIG=$HOME/.data
export NPM_CONFIG_PREFIX=$HOME/.data
export NPM_CONFIG_CACHE=$HOME/.data
export MINECRAFT_HOME=$HOME/.data
export MPUTILS_HOME=$HOME/.data
export MOZ_USER_DIR=$HOME/.data
export VIMFILES=$HOME/.data/.vim
export GNUPGHOME=$HOME/.datME/.data
export VSCODE_CONFIG_DIR=$HOME/.data
export VSCODE_EXTENSIONS_DIR=$HOME/.data
export VSCODE_OSS_DIR=$HOME/.data
export PKI_DIR=$HOME/.data
export W3M_DIR=$HOME/.data
export YARN_CONFIG_DIR=$HOME/.data
export YARN_GLOBAL_FOLDER=$HOME/.data
export WG_CONFIG_DIR=$HOME/.data
export GOPATH=$HOME/.data

export SSL_CERT_DIR=$HOME/.data
export SSL_CERT_FILE=$HOME/.data
export PKCS11_MODULE_PATH=$HOME/.data
export X509_CERT_DIR=$HOME/.data
export SSH_AUTH_SOCK=$HOME/.data
export PKI_HOME=$HOME/.data
export OPENSSL_CONF=$HOME/.data
export NSS_DB=$HOME/.data


export EDITOR='nvim'

# Path to your Oh My Zsh installation.
export ZSH_CUSTOM="$HOME/.data"
export ZSH="$HOME/.data/.oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.data/.oh-my-zsh/dumps"

#ALIASES
alias y='yazi'
alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nord='sudo systemctl start nordvpnd && nordvpn c Chicago'
alias cd=z
alias code=vscodium
_comp_options+=(globdots)   #include hidden files

#ZOXIDE
eval "$(zoxide init zsh)"

#FZF STUFF
eval "$(fzf --zsh)"
alias cz='yazi $(fzf -m --preview="bat --color=always {}")'
alias scz='sudo nvim $(fzf -m --preview="bat --color=always {}")'
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

ZSH_THEME="agnoster"

plugins=(git archlinux)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

HYPHEN_INSENSITIVE="true"

HIST_STAMPS="mm/dd/yyyy"
HISTFILE="$HOME/.data/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL="ignoredups:erasedups"
HISTIGNORE="ls:cd:pwd:exit"



export EDITOR='nvim'

fastfetch 
