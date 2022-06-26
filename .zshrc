# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# User defined alias

# default ls alias (uncomment if exa is not used)
#alias ls='ls --color=auto'
#alias ll='ls -la'

# exa alias
alias ls='exa'
alias ll='exa --tree --level=2 -l'
alias la='exa --tree --level=2 -la'

alias pls="sudo"

alias vi='vim'
alias vim='nvim'

alias v='vi'
alias q='exit'

alias p='python3'

alias pdf=zathura

alias zshconfig='vi ~/.zshrc'
alias vimconfig='vi ~/.vimrc'
alias xconfig='vi ~/.xinitrc'
alias tconfig='vi ~/.Xresources'
alias i3config='vi ~/.config/i3/config'
alias i3sconfig='vi ~/.config/i3status/config'
alias rconfig='vi ~/.config/ranger/rc.conf'

# End of user defined alias

# User defined functions

# Get cheatsheet
#  ex.  cheat c/move_cursor
#       cheat python/print
function cheat(){
	curl cht.sh/$1
}	

# Get weather
#  ex.  weather New_York
#       weather "40.7305991,-73.9865811"
#       weather NYC
function weather(){
	curl wttr.in/$1
}

# Quick connect to wifi
function wific(){
    if [ -z "$1" ]
    then
        echo "Usage: wific <wifi_network> [interface]"
        return 1
    fi

    interface=$2
    if [ -z "$2" ]
    then 
        interface="wlan0" 
    fi

    while : ; do   
        iwctl station $interface scan
        [[ $? == 0 ]] || break
    done

    iwctl station $interface get-networks

    while : ; do
        iwctl station $interface connect $1 > /dev/null
        [[ $? == 0 ]] || break
    done;
}

# Open spotify
function spoti(){
    systemctl --user status spotifyd.service > /dev/null

    if [[ $? == 3 ]]
    then
        systemctl --user restart spotifyd --now
    fi

    spt
}

#function fullbkp(){
#    sudo tar czf "/mnt/backup-$HOST-$(date +"%d_%m_%Y").tar.gz" \
#        --exclude=/backup.tar.gz \
#        --exclude=/dev \
#        --exclude=/mnt \
#        --exclude=/proc \
#        --exclude=/sys \
#        --exclude=/tmp \
#        --exclude=/media \
#        --exclude=/lost+found \
#        --exclude=/data \
#        /
#}

# End of user defined functions

#SSH SERVICE
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#PATH
export PATH="$PATH:/home/damned-me/.local/share/gem/ruby/3.0.0/bin"
export PATH="$PATH:/usr/share/rvm/bin"

# Install Ruby Gems to ~/.gems
export GEM_HOME="$HOME/.gems"
export PATH="$PATH:$HOME/.gems/bin"

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Enable vi mode
bindkey -v
