export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export M2_REPO=$HOME/.data
export WINEPREFIX=$HOME/.data
export SWT_HOME=$HOME/.data
export REDHAT_HOME=$HOME/.data
export VAR_HOME=$HOME/.data
export BUN_DIR=$HOME/.data
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
export SSH_AUTH_SOCK="$HOME/.data/.ssh/ssh-agent.sock"
export SSH_CONFIG="$HOME/.data/.ssh/custom_config"
export SSH_KEY_DIR="$HOME/.data/.ssh/keys"
export SSH_KNOWN_HOSTS="$HOME/.data/.ssh/custom_known_hosts"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.data/.oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.data/.oh-my-zsh/dumps"
export EDITOR="nvim"

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

#ATUIN
eval "$(atuin init zsh)"

ZSH_THEME="agnoster"

plugins=(git archlinux)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"
HISTFILE="$HOME/.data/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL="ignoredups:erasedups"
HISTIGNORE="ls:cd:pwd:exit"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


export EDITOR='nvim'

fastfetch 
