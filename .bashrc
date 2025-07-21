# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#Terminal Alias'
alias c='clear'
alias s='sudo'

#make mount command output human readable format
alias mount='mount | column -t'

#Show open ports
alias ports='netstat -tulanp'

#Stop ping after sending count ECHO_REQUEST packets
alias ping5='ping -c 5'
#Do not wait interval 1 second, go fast
alias fastping='ping -c 100 -s 2'

#Fix typos
alias cd..='cd ..'
alias pdw='pwd'

#Colorize the grep command output for ease of use
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#dnf shortcuts
alias unin='sudo dnf remove'
alias install='sudo dnf install'
alias upd='sudo dnf update'
alias offupd='sudo dnf offline-upgrade download'
alias offre='sudo dnf offline-upgrade reboot'

#cd shortcuts
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias pic='cd ~/Pictures'
alias ..='cd ..'
alias ~='cd ~'

#git shortcuts
alias ga='git add'
alias gp='git push'
alias gcm='git commit'

#Print working directory and copy it to the clipboard
alias pwdcp='pwd && pwd | xclip -sel clipboard'

export PATH=/home/bhaube/shell_scripts/mow/target/release/:$PATH
export PATH=/home/bhaube/shell_scripts/klipper_estimator:$PATH

# Enable Starship prompt
eval "$(starship init bash)"
# Enable zoxide (command 'z')
eval "$(zoxide init bash)"
