# -------------------------------------------------------------------------------- 
# AUTOCOMPLETIONS

# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# zmv
autoload zmv

# -------------------------------------------------------------------------------- 
# OPTIONS

ZSH_THEME="simple"

HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY
setopt PRINT_EXIT_VALUE

setopt AUTO_CD
setopt INTERACTIVE_COMMENTS

# initialize zoxide
eval "$(zoxide init zsh)"

bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

# -------------------------------------------------------------------------------- 
# ALIASES & FUNCTIONS

# wokeifying the coreutils
alias -- ls='ls -p --group-directories-first'
alias -- l='ls -l --sort=extension'
alias -- ll='ls -la --sort=extension'
alias -- wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias -- sv='sudoedit'
alias -- grep='grep --color'

# shorthands
alias -- v=nvim

# utilities
alias -- wttr='curl wttr.in/rio'

# yazi
function y() {
      local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
      yazi "$@" --cwd-file="$tmp"
      IFS= read -r -d '' cwd < "$tmp"
      [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
      rm -f -- "$tmp"
}

# dotfile handling
alias dotf='git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# -------------------------------------------------------------------------------- 
# PROMPT

autoload -Uz vcs_info

precmd() {
    vcs_info
}

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats '(%b)%c '

setopt PROMPT_SUBST
setopt PROMPT_SP

PROMPT_EOL_MARK=$''

# PROMPT='%F{gray}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# PROMPT='%B%F{green}[%*]%f%b %B%F{yellow}%n%f%b%B%F{blue}@%f%b%F{cyan}%M%f %F{blue}%2~%f %B%F{red}${vcs_info_msg_0_}%f%b$ '
PROMPT='%3~%f %% '

# -------------------------------------------------------------------------------- 
# PLUGINS
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -------------------------------------------------------------------------------- 
# LF IMAGE PREVIEW

if type lf &> /dev/null; then
    # Set up icons
    LF_ICONS=$(sed $HOME/.config/lf/icons \
                -e '/^[ \t]*#/d'         \
                -e '/^[ \t]*$/d'         \
                -e 's/[ \t]\+/=/g'       \
                -e 's/$/ /')
    LF_ICONS=${LF_ICONS//$'\n'/:}
    export LF_ICONS

    # Set up lfcd
    LFCD="$HOME/.config/lf/scripts/lfcd.sh"
    if [ -f "$LFCD" ]; then
        source "$LFCD"
        bindkey -s "^o" "lfcd\n"  # set up key-binding for zsh
        # bind '"\C-o":"lfcd\C-m"'  # set up key-binding for bash
        alias lf=lfcd  # overwrite lf with lfcd
    fi
fi

