# 42 specific path for the network drive
# export PATH=/nfs/2017/o/olkovale/goinfre/brew/bin:~/opt/bin:$PATH
# ubuntu specific path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/bin/gcc-5.3.0/bin"

# hopefully portable between mac and ubuntu
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# ubuntu specific aliases
# alias gc="google-chrome"
# alias xc="xchat"
# alias eb="sudo nano /sys/class/backlight/acpi_video0/brightness"
# alias op="xdg-open"
#
# mac and ubuntu aliases
alias z="zsh"
alias ez="vim ~/.zshrc"
alias ev="vim ~/.vimrc"
alias tb="nc termbin.com 9999"
#
# 42 specific
# stop taking a fresh dump for each PC in the lab
# compinit -d ~/.zcompdump-olkovale
#
# turn on vi mode
set -o vi
# set vi as default mode
bindkey -v
# useful emacs binds i'm already used to
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
VI_NRM="$FG[222][% NRM]%  %{$reset_color%}"
VI_INS="$FG[120][% INS]%  %{$reset_color%}"
function zle-line-init zle-keymap-select {
	PROMPT="${ret_status} $FG[117]%c%{$reset_color%} $(git_prompt_info) ${${KEYMAP/main/$VI_INS}/vicmd/$VI_NRM} "
	zle reset-prompt
}
# i forgot what these do
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
# 196 red
# 177 purple
# 167 red orange
# 160 red red
# 123 light light blue
# 222 yellow
# 200 puke pink
# 198 scurvy
# 195 chalk
# 194 disappointing lemonade
# 196 angry eyeball
# 192 yellow 2
# 190 highlighter
# 120 green
# 117 sky blue
# 116 sea
# 113 leaf
# 111 late afternoon
# 186 pee in the snow
# 183 light purple
# 182 hopscotch
# 181 dawn
# 180 dusk
# 179 stale bread
# 173 orange
