if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-09-03 20:46:11
set PATH $PATH /home/andre/.local/bin/
fish_add_path /usr/local/go/bin/
fish_add_path /home/andre/go/
fish_add_path /home/andre/bin
# utility functions:

function cs
    cd $argv
    ls -l
    end

set -gx EDITOR vim
set -gx VISUAL vim

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
set -U fish_user_paths /usr/local/go/bin $fish_user_paths

set FZF_DEFAULT_OPTS --color=fg:-1,bg:-1,hl:#af0000,fg+:#d0d0d0,bg+:#000000,hl+:#ff0000,info:#ff0000,prompt:#ff0000,pointer:#ff0000,marker:#af0000,spinner:#eeeeee,header:#bcbcbc
