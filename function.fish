alias userv='cd ~/Documents/repos/channel11/user-service'
alias chan11='cd ~/Documents/repos/channel11/channel11-client'
alias score='cd ~/Documents/repos/scorecard'
alias 11theme='cd ~/Documents/repos/l11-theme'
alias gs='git status'
alias gr='git remote update'
alias redis='redis-server /usr/local/etc/redis.conf'
alias mongo='mongod --config /usr/local/etc/mongod.conf'
alias leader='cd ~/Documents/repos/leaderboard'
alias dash='cd ~/Documents/repos/dashboard'

function gl; git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --; end;
