# ==========================
#    Baisc Configulation
# ==========================
# (ref) http://d.hatena.ne.jp/yk5656/20140305/1394585110
#
#
autoload -Uz compinit
compinit

setopt correct

setopt auto_cd

#setopt no_beep

setopt nolistbeep

setopt list_packed

setopt magic_equal_subst

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt auto_pushd

setopt pushd_ignore_dups

#
# History
#
HISTFILE=~/.zsh_history

HISTSIZE=100000

SAVEHIST=100000

if [ $UID = 0 ]; then
  unset HISTFILE
  SAVEHIST=0
fi

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

setopt share_history

setopt hist_ignore_dups

setopt hist_ignore_all_dups

#setopt append_history

#setopt extended_history

#setopt hist_verify

#setopt hist_ignore_space

#setopt hist_save_no_dups

# ==========================
#    Color / Font
# ==========================
# (ref) http://d.hatena.ne.jp/yk5656/20140305/1394585110

autoload colors
colors

# ls 
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

case "${OSTYPE}" in
darwin*)
  # Mac
  alias ls="ls -GF"
  ;;
linux*)
  # Linux
  alias ls='ls -F --color'
  ;;
esac

# ==========================
#    Prompt
# ==========================
PROMPT="%F{green}[%n%f%F{blue}@%m:%1~%F{green}]%(!.#.$)%f "
 
# ==========================
#    Alias
# ==========================
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias rm="rm -i"
alias mv="mv -i"
alias lsize="ls -lh"
alias ll="ls -al"
alias pasjps='ps2eps --ignoreBB -R + -f'
# http://ytkyk.info/wiki/ftools/QDPで保存したPSファイルをPASJ用のEPSに変換する.html

# ==========================
#    HEASOFT 
# ==========================
export HEADAS=/usr/local/soft/heasoft/heasoft-6.24/x86_64-apple-darwin16.7.0
alias heainit=". $HEADAS/headas-init.sh"
export XPA_METHOD=local 
# this is needed to avoid fv errors : see https://heasarc.gsfc.nasa.gov/lheasoft/issues.html

export HEADAS_REPOSITORY=/Users/enoto/work/repository/heasarc/FTP/

# ==========================
#    CALDB
# ==========================
export CALDB=/usr/local/soft/heasoft/caldb
source $CALDB/software/tools/caldbinit.sh

# ==========================
#    Python (pyenv)
# ==========================
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ==========================
#    Xwindw (tentative)
# ==========================
if [[ -z $DISPLAY ]]; then
	export DISPLAY=:0.0
fi	

# ==========================
#    HOPPY
# ==========================
alias hoppyinit="source /Users/enoto/work/soft/hoppy/setenv/setenv.bashrc"

# ==========================
#    PINT 
# ==========================
# http://nanograv-pint.readthedocs.io/en/latest/installation.html#installing-from-source
export TEMPO2="/Users/enoto/Dropbox/enoto/library/tempo2.tmp"

