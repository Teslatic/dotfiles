# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/amperius/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"

ZSH_THEME="powerlevel9k/powerlevel9k"

# show os info when opening new terminal
# neofetch
# Powerline Config
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda os_icon ssh context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history battery time)
# POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
POWERLEVEL9K_BATTERY_STAGES=($'\uf244' $'\uf243' $'\uf242' $'\uf241' $'\uf240' )
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(red1 orangered1 darkorange orange1 gold1 yellow1 yellow2 greenyellow chartreuse1 chartreuse2 green1)
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\ue708'

DEFAULT_USER=$USER
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_middle
# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  conda
  git
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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# added by Anaconda3 installer
export PATH="/home/amperius/anaconda3/bin:$PATH"

# custom aliases
alias emacs="emacsclient -nc"
alias sorc="source ~/.zshrc"
alias zshconfig="emacs ~/.zshrc"
alias ssh2tf="ssh -X vloeth@login.informatik.uni-freiburg.de"
alias fuse2tf="sshfs vloeth@login.informatik.uni-freiburg.de:/home/vloeth/ ~/fusessh"
alias defuse="fusermount -u ~/fusessh "
alias restartSnap='systemctl restart snapd.service'
alias py27='source activate py27'
alias deac='source deactivate'
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
