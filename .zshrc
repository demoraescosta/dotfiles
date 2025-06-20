export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.cargo/env
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    fzf
)

source $ZSH/oh-my-zsh.sh

export FZF_DEFAULT_OPTS='--color=fg:-1,bg:-1,hl:#af0000,fg+:#d0d0d0,bg+:#000000,hl+:#ff0000,info:#ff0000,prompt:#ff0000,pointer:#ff0000,marker:#af0000,spinner:#eeeeee,header:#bcbcbc'
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# prompt

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{gray}%~%f %F{red}${vcs_info_msg_0_}%f> '

