# change ls directory color
set -gx LSCOLORS Gxfxcxdxbxegedabagacad 

# use vi keybindings
fish_vi_key_bindings 

# Initialize rbenv
status --is-interactive; and source (rbenv init -|psub)

# Initialize nodenv
status --is-interactive; and source (nodenv init -|psub)
set fish_user_paths (npm bin)

# Initialize jenv & java (work only)
if test -d ~/.jenv
  # JAVA_HOME
  set -x JAVA_HOME (jenv javahome)
  alias jenv_set_java_home='export JAVA_HOME=(jenv javahome)'
  
  # ORACLE_HOME
  set -x ORACLE_HOME /usr/local/Cellar/instantclient-basic11/11.2.0.4.0/lib
  set -x TNS_ADMIN $ORACLE_HOME
  set -x OCI_DIR $ORACLE_HOME
  set -x PATH $PATH $ORACLE_HOME
  set -x JRUBY_OPTS "--dev -J-Xmx2048m"
end

# Python (work only)
# set -x PATH $PATH $HOME/Library/Python/2.7/bin
