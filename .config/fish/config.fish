if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-09-03 20:46:11
set PATH $PATH /home/andre/.local/bin

# utility functions:

function cs
    cd $argv
    ls -l
    end

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
