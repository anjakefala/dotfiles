# Path to your oh-my-zsh installation.
export ZSH=~/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="fishy"
#ZSH_THEME="michelebologna"
ZSH_THEME="risto"
#kafeitu
#marani
#mrtazz
#geoffgarside
#pygmalion

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

# set up z
. ~/dotfiles/z/z.sh

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/home/kefala/.local/bin:/home/kefala/dotfiles/bin:/home/kefala/dotfiles/local/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

fpath=(/usr/share/zsh/functions/_visidata $fpath)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ohmyzsh="vim ~/.oh-my-zsh"

bindkey "^[Oc" forward-word
bindkey "^[Od" backward-word

eval `dircolors ~/dotfiles/dircolors.txt`

source ~/dotfiles/anjarc

if [ -r ~/dotfiles/local/.zshrc-local ] ; then
    source ~/dotfiles/local/.zshrc-local
fi

alias gbr="git for-each-ref --sort=-committerdate refs/heads --format='%(refname:short)|%(committerdate:short)|%(authorname)|%(objectname:short)|%(contents:subject)' | column -t -s'|'"

#export PS1='$ '
#export PS1=[\[\e[1;96m\]\u@dev\[\e[0m\] \W]# 
