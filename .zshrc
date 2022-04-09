
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
export PATH="$HOME/.npm-packages/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maxgrzanna/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/maxgrzanna/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/maxgrzanna/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/maxgrzanna/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias python='/usr/local/bin/python3'
launchctl setenv PATH $PATH

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

eval "$(oh-my-posh --init --shell zsh --config ~/omp-themes/amro.omp.json)"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

alias nv="nvim"
alias ..="cd .."
alias ls="ls -a"
alias desk="cd /users/maxgrzanna/Desktop"
alias dev="cd /users/maxgrzanna/Documents/dev/"
alias k="kubectl"


