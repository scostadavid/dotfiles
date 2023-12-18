# User definitions

# python3
alias python=python3
alias pip=pip3

# Dir
alias repo='cd ~/repositories'
alias rf='rm -rf'


# Gnu make
alias mk='make'
alias mkcmk='make clean && make'
alias mkc='make clean'

# Clipboard
alias clipcopy='xclip -sel c'

# adb
alias reverseall='adb start-server && adb reverse tcp:9229 tcp:9292 && adb reverse tcp:9000 tcp:9000 && adb reverse tcp:8081 tcp:8081'
