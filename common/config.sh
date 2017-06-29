export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

# Initialize rbenv if installed
if test -d $HOME/.rbenv; then
  eval "$(rbenv init -)"
fi

# Initialize nodenv if installed
if test -d $HOME/.nodenv; then
  eval "$(nodenv init -)"
fi

# Initialize jenv & jenv if installed (work only)
if test -d $HOME/.jenv; then
  eval "$(jenv init -)"

  export PATH="$HOME/.jenv/bin:$PATH"
  export JAVA_HOME=`jenv javahome`

  jenv enable-plugin export # automatically sets JAVA_HOME on directory change
  alias jenv_set_java_home='export JAVA_HOME=`jenv javahome`'
  
  export ORACLE_HOME=/usr/local/Cellar/instantclient-basic11/11.2.0.4.0/lib
  export TNS_ADMIN=$ORACLE_HOME
  export OCI_DIR=$ORACLE_HOME
  export PATH=$ORACLE_HOME:$PATH
  export JRUBY_OPTS="--dev -J-Xmx2048m"
fi
