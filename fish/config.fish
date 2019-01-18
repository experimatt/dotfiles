# change ls directory color
set -gx LSCOLORS Gxfxcxdxbxegedabagacad

# use vi keybindings
fish_vi_key_bindings

# hide welcome message
set fish_greeting

# helpful commands
alias bundle-ag="bundle show --paths | grep '/gems/' | xargs ag"

# Initialize rbenv & nodenv
status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and source (nodenv init -|psub)

# Initialize jenv & java (work only)
if test -d ~/.jenv
  set -x JAVA_HOME (jenv javahome)
  alias jenv_set_java_home='export JAVA_HOME=(jenv javahome)'
end

# add ./bin to PATH
set -x PATH ./bin $PATH

# Go (home machine)
if test -d ~/go
  set -x GOPATH $HOME/go
  set -x PATH $PATH $GOPATH/bin

  # single line option that doesn't set $GOPATH
  # set -x PATH $PATH (go env GOPATH)/bin
end

# Git shortcuts
set -g fish_user_abbreviations 'ga=git add' \
                               'gb=git branch -v' \
                               'gc=git commit' \
                               'gco=git checkout' \
                               'gd=git diff' \
                               'gs=git status' \
                               'gpl=git pull' \
                               'gps=git push' \
                               'gap=git add -p'
