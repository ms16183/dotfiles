# standard
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias tree='tree -NC'
alias grep='grep --color=auto'

# text editer
alias vi='vim'
alias ed='vim'
alias moe='vim'
alias nano='vim'
alias pico='vim'
alias memo='vim'
#alias emacs='vim'

# edit
alias bashrc='vi ~/.bashrc && source ~/.bashrc'
alias bashprofile='vi ~/.bash_profile && source ~/.bash_profile'
alias zshrc='vi ~/.zshrc && source ~/.zshrc'
alias zshprofile='vi ~/.zsh_profile && source ~/.zsh_profile'
alias vimrc='vi ~/.vimrc'

# check sum
alias sha1='openssl sha1'

# for man pages
alias eman='env LANG=C man'
alias jman='env LANG=ja_JP.UTF-8 man'

# original command
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ll='ls -l -G'
alias っl='ll'
alias la='ls -a -G'
alias l='ls -alF'
alias sl='ls'
alias t='tree'
alias tracert='traceroute'
alias objdump='gobjdump'
alias fcount='ls -1 | wc -l'
alias 伊達='date'
alias copy='pbcopy'

# global alias
alias -g L='| less'
alias -g G='| grep'
alias -g H='| head'
alias -g T='| tail'

# suffix alias
alias -s txt=vim

# zsh color
autoload -Uz colors
colors

# zsh compinit
autoload -Uz compinit
compinit
zstyle ':completion:*:default' menu select=1

# cd, pushd
setopt auto_cd
setopt print_eight_bit
setopt pushd_ignore_dups
setopt noautoremoveslash

# auto compinit
setopt correct
setopt extended_glob
setopt auto_param_keys
setopt magic_equal_subst

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt hist_reduce_blanks
bindkey '^R' history-incremental-pattern-search-backward

# comments
setopt interactive_comments

# sounds
setopt no_beep

# tetris(Esc+x -> tetris)
autoload -Uz tetris
zle -N tetris

# Key-bind is like Vim.
#bindkey -v

# command not found.
function command_not_found_handler(){
  which cowsay >/dev/null
  if [ $? = 0 ]; then
    cowsay "$1 not found..."
  else
    echo "$1 not found..."
  fi
}

# prompt
export PS1="[%n@%m %~]$ "

# initial dir
cd ~/Documents/
