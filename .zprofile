export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/cross/bin" # add custom build i686-elf gnu cross compiler
export PATH="$PATH:$HOME/.cargo/bin" # cargo
export PATH="$PATH:/home/andre/.local/share/gem/ruby/3.4.0/bin" # ruby gems
export PATH="$PATH:/root/.local/share/gem/ruby/3.4.0/bin"
export PATH="$PATH:$HOME/.local/share/go/bin"
# -------------------------------------------------------------------------------- 
# DEFAULT PROGRAMS

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"

# -------------------------------------------------------------------------------- 
# XDG STUFF

export XDG_DOWNLOAD_DIR="$HOME/tmp/downloads"
export XDG_PICTURES_DIR="$HOME/images"
export XDG_VIDEOS_DIR="$HOME/images"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_CACHE_HOME="$HOME/.cache"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# HOME FOLDER ORGANIZATION

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java 
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export FCEUX_HOME="$XDG_CONFIG_HOME"/fceux
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export HISTFILE="$XDG_STATE_HOME"/bash/history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmr
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
alias irssi=irssi --config="$XDG_CONFIG_HOME"/irssi/config --             
  home="$XDG_DATA_HOME"/irssi
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export RANDFILE="$XDG_CACHE_HOME"/rnd
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PYTHON_HISTORY="$XDG_CACHE_HOME"/python_history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"

export GRIM_DEFAULT_DIR="$HOME/images/screenshots"

# -------------------------------------------------------------------------------- 
# PROGRAM-SPECIFIC OPTIONS

# export FZF_DEFAULT_OPTS='--color=fg:-1,bg:-1,hl:#af0000,fg+:#d0d0d0,bg+:#000000,hl+:#ff0000,info:#ff0000,prompt:#ff0000,pointer:#ff0000,marker:#af0000,spinner:#eeeeee,header:#bcbcbc'

# export GTK_THEME=Adwaita:dark
# export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
# export QT_QPA_PLATFORMTHEME=qt5ct
