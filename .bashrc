# boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# git and git-flow completion
[ -r ~/git-completion.bash ] && source ~/git-completion.bash
[ -r ~/git-flow-completion.bash ] && source ~/git-flow-completion.bash

# tmuxinator and tmuxinator completion
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# ARM toolchain for pebble!
export PATH="$HOME/repos/pebble-dev/arm-cs-tools/bin:$PATH"

# vim is my default editor
export EDITOR="vim"

# directory coloring
alias ls='ls -G'

# grep highlighting
export GREP_COLOR='1;37;41'
export GREP_OPTIONS='--color=auto'

# run MacVim from the terminal instead
alias vim='mvim -v'

# git alias!!
alias g='git'

# statusline
export PS1='\u@\h:\w$ '
