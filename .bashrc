export PATH=/usr/local/bin:/usr/local/sbin:$HOME/.gem/ruby/1.8/bin:$PATH

# vim is my default editor
export EDITOR="vim"

# couchdb shortcuts
alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

# redis shortcuts
alias restart_redis='launchctl stop homebrew.mxcl.redis'
alias start_redis='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias stop_redis='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'

# mongodb shortcuts
alias restart_mongo='launchctl stop homebrew.mxcl.mongodb'
alias start_mongo='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'
alias stop_mongo='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'

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

# git and git-flow completion
[ -r ~/git-completion.bash ] && source ~/git-completion.bash
[ -r ~/git-flow-completion.bash ] && source ~/git-flow-completion.bash

#tmuxinator and tmuxinator completion
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
[[ -s $HOME/.gem/ruby/bin/1.8/bin/tmuxinator_completion ]] && source $HOME/.gem/ruby/bin/1.8/bin/tmuxinator_completion
