# change ls directory color
set -gx LSCOLORS Gxfxcxdxbxegedabagacad

# use vi keybindings
fish_vi_key_bindings

# helpful commands
alias bundle-ag="bundle show --paths | grep '/gems/' | xargs ag"

# Initialize rbenv
status --is-interactive; and source (rbenv init -|psub)

# Initialize nodenv
status --is-interactive; and source (nodenv init -|psub)

# Initialize jenv & java (work only)
if test -d ~/.jenv
  # JAVA_HOME
  set -x JAVA_HOME (jenv javahome)
  alias jenv_set_java_home='export JAVA_HOME=(jenv javahome)'

  # ORACLE_HOME
  set -x JRUBY_OPTS "--dev -J-Xmx2048m"

  # add mysql to path (work only)
  set -x PATH /usr/local/opt/mysql@5.6/bin $PATH

end

# add ./bin to PATH
set -x PATH ./bin $PATH

# Python (work only)
if test -d ~/.virtualenvs
  set -x PATH $PATH $HOME/Library/Python/2.7/bin
  set -x WORKON_HOME $HOME/.python/virtualenvwrapper
  set -x PROJECT_HOME $HOME/projects
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
