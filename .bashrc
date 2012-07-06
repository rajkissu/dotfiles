# couchdb shortcuts
alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

# redis shortcuts
alias restart_redis='launchctl stop homebrew.mxcl.redis'
alias start_redis='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias stop_redis='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'

# mongodb shortcuts
alias resstart_mongo='launchctl stop homebrew.mxcl.mongodb'
alias start_mongo='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'
alias stop_mongo='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'

# directory coloring
alias ls='ls -G'

# grep highlighting
export GREP_COLOR='1;37;41'
export GREP_OPTIONS='--color=auto'

# run MacVim from the terminal instead
alias vim='mvim -v'

# statusline
export PS1='\u@\h:\w$ '
