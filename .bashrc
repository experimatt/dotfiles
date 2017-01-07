eval "$(rbenv init -)"
eval "$(jenv init -)"

export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export PS1="🍕 :\W$ "

export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
