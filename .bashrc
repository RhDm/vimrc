#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ls="ls -alGh"
alias v="vim"
alias pacman="sudo pacman"
alias cd..="cd .."
alias env37="conda activate env37"
alias env38="conda activate env38"
alias ref="cd ~/Documents/ref/"

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# source /opt/anaconda/bin/activate
# source /usr/bin/activate  # commented out by conda initialize

# export CONDA_EXE=/usr/bin/conda

# alias env37="source activate /home/mrg/.conda/envs/env37/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mrg/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mrg/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mrg/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mrg/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

