# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/jstone1974/.scripts/
source ~/.xinitrc

# Path to your oh-my-zsh installation.
#export ZSH="/home/jds1974/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="jds1974"
#ZSH_THEME="random"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
 DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

#source $ZSH/oh-my-zsh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Enable Ctrl-Alt-Backspace for reboot
setxkbmap -option terminate:ctrl_alt_bksp

#MS DOS Aliases
alias cd..='cd ..'
##Linux Shell Aliases
#alias ls='ls -ha --group-directories-first --color=auto'
#alias ll='ls -alhFr --group-directories-first --color=auto' 
#alias la='ls -A'
#alias l='ls -CF'


alias ls='lsd -ha --group-dirs first --color=auto'
alias ll='lsd -alhFr --group-dirs first --color=auto' 
alias la='lsd -A'
#alias l='lsd -1F'


alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cp='cp -v -i'
alias rm='rm -v -i'
alias mv='mv -v -i'
alias n='nnn'
alias r='ranger'
alias l='lf'
alias sudo='sudo '
alias sv='systemctl '
alias v='vim'
alias vv='vim ~'
#alias tmux='tmux attach -d'
#zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 

#zsh syntax highlight
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Enable System-wide Touchpad Natural Scrolling Lenovo N21
#xinput --set-prop 'Elan Touchpad' 'libinput Natural Scrolling Enabled' 1 && notify-send 'Natural Scrolling Set For Touchpad' ||  notify-send 'Error Setting Natural Scrolling' 
#xinput --set-prop 'Microsoft Microsoft USB Wireless Mouse' 'libinput Natural Scrolling Enabled' 1 && notify-send 'Microsoft Mouse Natural Scrolling Set' ||  notify-send 'Error Setting MIcrosoft Mouse'
#Logitech Marble Trackball Wheel Scroll Emulation
#xinput set-prop 9 --format=8 283 0 0 1 
#xinput set-prop 'pointer:CHESEN PS2 to USB Converter' --format=8 'libinput Scroll Method Enabled' 0 0 1 && notify-send 'Trackball Scroll Emulation Set' ||  notify-send 'Error Setting Trackball Scrolling'
#Lenovo ThinkPad T530
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Natural Scrolling Enabled' 1
tmux attach -d || tmux new-session
#Tmux Start/Check if session exists
#DO NOT ENTER THIS COMMAND: ## tmux source-file tmuxsession1
if [ -z "$TMUX" ]; then
    base_session='my_session'
	#Create a new session if it doesn't exist
    tmux has-session -t $base_session || tmux new-session -d -s $base_session
    # Are there any clients connected already?
    client_cnt=$(tmux list-clients | wc -l)
    if [ $client_cnt -ge 1 ]; then
		session_name=$base_session"-"$client_cnt
		tmux new-session -d -t $base_session -s $session_name
		tmux -2 attach-session -t $session_name \; set-option destroy-unattached
	else
		tmux -2 attach-session -t $base_session
		                                                         fi
		                                                         fi
#tmux new-session 
#tmux  
#tmux attach -d || tmux new-session source-file tmuxsession1
#tmux has-session
#unset TMUX
#screenfetch
#screenfetch

#neofetch
neofetch
#neofetch --disable Packages Memory GPU --ascii_distro 'GalliumOS_small'
#~/pfetch


#Powerline


export TERM='xterm-256color'
#/usr/share/powerline/bindings/zsh/powerline.zsh
#function _update_ps1()
#{
#    export PROMPT="$(~/powerline-zsh/powerline-zsh.py $?)"
#}
#precmd()
#{
#    _update_ps1
#}
source /usr/share/powerline/bindings/zsh/powerline.zsh
powerline-daemon -q --replace
#/usr/share/powerline/bindings/zsh/powerline.zsh

#powerline-shell prompt
#function powerline_precmd() {
#    PS1="$(powerline-shell --shell zsh $?)"
#	}
#
#	function install_powerline_precmd() {
#	  for s in "${precmd_functions[@]}"; do
#	      if [ "$s" = "powerline_precmd" ]; then
#		        return
#		  fi
#	  done 
#	  precmd_functions+=(powerline_precmd)
#		}
#
#	if [ "$TERM" != "linux" ]; then
#		    install_powerline_precmd
#	fi
#
#if [ -n "$GTK_MODULES" ]; then
#    GTK_MODULES="${GTK_MODULES}:appmenu-gtk-module"
#	else
#	    GTK_MODULES="appmenu-gtk-module"
#	fi
#
#		if [ -z "$UBUNTU_MENUPROXY" ]; then
#		    UBUNTU_MENUPROXY=1
#		fi
#
#		export GTK_MODULES
#		export UBUNTU_MENUPROXY

#Solarized Theme
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

#public proxy
#export {http,https,ftp}_proxy="http://207.180.226.111:3128"

#Add Ctrl-Left Ctrl-Right word skip

#bindkey "^[[1;5C" forward-word
#bindkey "^[[1;5D" backward-work
#
#bindkey '^[[1;5C' emacs-forward-word
#bindkey '^[^[[D' emacs-backward-word
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]} r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=1
zstyle ':completion:*' prompt ' -- %e errors!! --'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jds1974/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify extended_history
# End of lines configured by zsh-newuser-install
#LS-COLORS
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

#Color Prompt
#PS1='┏━✡ [ = - - = ]✡ 
#┗━✡ ▶\$'
HOSTNAME=$HOST
#Rainbow Prompt
if [[ -f ~/.zsh_prompt ]]; then
  . ~/.zsh_prompt,txt
fi

#Set Vi editing mode
bindkey -v


# Set Proxy
function setproxy() export {http,https,ftp}_proxy="167.71.191.49:3128"
# Unset Proxy
function unsetproxy() unset {http,https,ftp}_proxy

#fix autocorrection nocorrect with sudo
 alias sudo='nocorrect sudo' 
 setxkbmap -option ctrl:nocaps
