source ~/dotfiles/common/config.sh

export PS1="🍕 :\W$ "

# asdf completions
. <(asdf completion bash)

# use vim keybindings
set -o vi
