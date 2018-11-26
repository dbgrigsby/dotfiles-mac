export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
alias c="clear"
alias l="ls -la"
alias sshamazon="ssh ubuntu@ec2-52-44-147-19.compute-1.amazonaws.com"
alias sshamazonbig="ssh ubuntu@ec2-54-84-79-209.compute-1.amazonaws.com"
alias sshamazonbigbackup="ssh ubuntu@ec2-34-228-217-11.compute-1.amazonaws.com"
alias sshlocust="ssh ubuntu@ec2-54-84-127-178.compute-1.amazonaws.com"
alias sshgoogle="ssh dbg28@35.229.24.137"
alias sshmini="ssh -Y -l mininet -p 2222 localhost"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias youtube_dl='python3 -m youtube_dl'
alias youtube-dl-gui=/Users/danielgrigsby/Code/YoutubeDL/youtube-dl-gui-0.4/build/scripts-2.7/youtube-dl-gui
alias python=/usr/local/bin/python3
export PATH=$PATH:$HOME/.local/bin
export FFMPEG=/usr/local/Cellar/ffmpeg/4.0
export PATH=$PATH:$FFMPEG
alias ls="ls -a"
alias racket="/Applications/Racket\ v6.11/bin/racket"
alias pip3="python3 -m pip"
alias termbin="nc termbin.com 9999"
alias sbrc="source ~/.bash_profile"
alias ebrc="vim ~/.bash_profile"
alias evrc="vim ~/.vimrc"
shopt -s histverify

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# export iterm2_hostname=ec2-52-44-147-19.compute-1.amazonaws.com
source ~/.transfer.sh

# add this configuration to ~/.bashrc
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

alias ta='tmux attach -t'
alias tls='tmux ls'
alias gs='git status'
alias gl='git log'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git remote -v'
eval 
            function fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=bash;
                export TF_ALIAS=fuck;
                export TF_SHELL_ALIASES=$(alias);
                export TF_HISTORY=$(fc -ln -10);
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                history -s $TF_CMD;
            }
        
alias gb='git branch -v'
alias rtv='python3 -m rtv'
# User specific aliases and functions
has_virtualenv() {
    if [ -e venv ]; then
        deactivate >/dev/null 2>&1
        source venv/bin/activate
    fi
}

venv_cd () {
    cd "$@" && has_virtualenv
}

alias cd="venv_cd"

# https://gist.github.com/alanthonyc/1048701
alias lizard='python3 -m lizard -C5'
alias v='vim'
alias grep='grep --color=auto'
alias co="cd ~/Code"
alias liz293='lizard -C5 -w'
alias postr='cd ~/Code/395/Postr'


export ANT_HOME=/usr/local/Cellar/ant/1.10.5/libexec
export PATH=$PATH:$ANT_HOME/bin
