#########
# ls

# enable color support of ls and also add handy aliases
alias ls='ls -FG'

# some more ls aliases
alias ll='ls -al'
alias la='ls -A'
alias l='ls -C'
alias l.='l -d .*' # only hidden files

# directories
alias lf='ls -l | grep ^d' # only list directories
alias lsd='ll | grep ^d' # only list directories, including hidden
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''' # recursive directory listing

#########
# Other

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30' # show command frequency
alias wow='git st'
