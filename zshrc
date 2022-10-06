# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zahedhossain/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zahedhossain/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zahedhossain/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zahedhossain/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#if command -v python3 > /dev/null; then
#    export PATH=`python3 -m site --user-base`/bin:$PATH
#fi

# Source work related configs
source ~/my_zynga_configs.sh

source /Users/zahedhossain/Documents/Developments/zsh-git-prompt/zshrc.sh

eval "$(zoxide init zsh)"
eval "$(ntfy shell-integration)"

export JAVA_TOOL_OPTIONS="-Dhttps.protocols=TLSv1.2"
export JVM_SUPPORT_RECOMMENDED_ARGS="-Datlassian.plugins.enable.wait=500"

cleanup() {
    ssh-add -D
    kill $SSH_AGENT_PID 2>/dev/null
    ssh-agent -k > /dev/null 2>&1
    unset SSH_AGENT_PID
    unset SSH_AUTH_SOCK
}

# SSH Setup
cleanup
eval `ssh-agent -s`
trap "cleanup" 0
ssh-add -K ~/.ssh/id_rsa


export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
VIRTUAL_ENV_DISABLE_PROMPT=0

export VIRTUALENVWRAPPER=/usr/bin/python
export PYCURL_SSL_LIBRARY=openssl
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

# Change zsh options

# Create Aliases
alias ls='ls -lAFh'
alias src="source ${HOME}/.zshrc"
alias k=kubectl
alias g=git
alias cd=z

alias ll='exa -alh'
alias tree='exa --tree'

if command -v bat > /dev/null; then
    alias cat="bat"
elif command -v batcat> /dev/null; then
    alias cat="batcat"
fi

# Customize Prompt(s)

## OLD PROMPT='%n@%m %1~ %#
#PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
PROMPT='
%1~ %L $(git_super_status) %#
🤔 '

## show current time
RPROMPT='%*'

# Add locations to $PATH Variable

# Write Handy functions
function mkcd() {
    # $@ -> first argument, $_ -> last argument
    mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins

# ...and Other Surprises

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/go/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
