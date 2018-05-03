# Global bashrc file
# Put the file in /etc/profile.d/
# bind some configurations at .inputrc
# Tab completion ignore case
bind "set completion-ignore-case on"

# Click just one Teb for completion
bind "set show-all-if-ambiguous on"

# History search for Up and Down keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Set autocompletion for git
for file in /etc/bash_completion.d/* ; do
    source "$file"
done

# Variables
export PS1="[\[\e[35m\]\u@\[\e[33m\]\h:\w\[\e[m\]]\[\e[32m\]\$\[\e[m\] "
export PATH=~/.local/bin:$PATH
source /opt/intel/bin/compilervars.sh -arch intel64
source /opt/intel/vtune_amplifier_2018/amplxe-vars.sh > /dev/null

# Aliases
alias l="ls -al"

# Set autocd
shopt -s autocd

# Set vi mode
set -o vi
