#VI MODE
bindkey -v
export KEYTIMEOUT=1
function zle-keymap-select {
  case $KEYMAP in
    vicmd) echo -ne '\e[2 q' ;;  # Block cursor in Normal mode
    viins|main) echo -ne '\e[6 q' ;;  # Beam cursor in Insert mode
  esac
}
zle -N zle-keymap-select
function zle-line-init {
  echo -ne '\e[6 q'  # Set cursor to beam on shell start
}
zle -N zle-line-init
echo -ne '\e[6 q'  # Ensure cursor is reset when shell starts

#ALIASES
alias y='yazi'
alias p='paru'
alias pfzf='paru -Slaq | fzf '
alias gs='git status -s'
alias gac='git add .; git commit -m'
alias ip='ip -c'
alias sys='systemctl status'
alias syp='sudo systemctl stop'
alias syr='sudo systemctl restart'
alias syt='sudo systemctl start'
alias syd='sudo systemctl disable'
alias sye='sudo systemctl enable'
alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nord='sudo systemctl start nordvpnd && nordvpn c Chicago'
alias cd='z'
alias code='vscodium'
alias cz='yazi $(fzf -m --preview="bat --color=always {}")'
alias scz='sudo nvim $(fzf -m --preview="bat --color=always {}")'
alias ka='killall'
alias xvpn='sudo xvpn connect'
alias pas='pactl set-default-sink alsa_output.pci-0000_01_00.1.hdmi-surround71'
alias pah='pactl set-default-sink alsa_output.usb-FIIO_FiiO_K11-01.iec958-stereo'

#CONFIG
_comp_options+=(globdots)
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"
HISTFILE="$HOME/.data/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
HISTCONTROL="ignoredups:erasedups"
HISTIGNORE="ls:cd:pwd:exit"
setopt prompt_subst
source ~/.zplug/repos/agnoster/agnoster-zsh-theme/agnoster.zsh-theme
precmd() { print "" }

#PLUGINS
source ~/.zplug/init.zsh
zplug "agnoster/agnoster-zsh-theme"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "marlonrichert/zsh-autocomplete"
if ! zplug check --verbose; then
    zplug install
fi
zplug load

#AUTOSUGGESTIONS/COMPLETIONS
export ZSH_AUTOCOMPLETE_WIDGET_ASYNC="true"

#ZOXIDE
eval "$(zoxide init zsh)"

#FZF STUFF
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#ENV VARS
export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME=qt6ct
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH_CUSTOM="$HOME/.data"
export EDITOR='nvim'
export M2_REPO=$HOME/.data
export WINEPREFIX=$HOME/.data
export SWT_HOME=$HOME/.data
export REDHAT_HOME=$HOME/.data
export VAR_HOME=$HOME/.data
export BUN_DIR=$HOME/.data
export TMUX_PLUGIN_MANAGER_PATH=$HOME/.data
export TMUX_PLUGIN_MANAGER_DIR=$HOME/.data
export NVIDIA_DRIVER_CAPABILITIES=$HOME/.data
export CUDA_HOME=$HOME/.data
export CUDA_PATH=$HOME/.data
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
export GNUPGHOME=$HOME/.data/.data
export PKI_DIR=$HOME/.data
export W3M_DIR=$HOME/.data
export YARN_CONFIG_DIR=$HOME/.data
export YARN_GLOBAL_FOLDER=$HOME/.data
export WG_CONFIG_DIR=$HOME/.data
export GOPATH=$HOME/.data

fastfetch 
