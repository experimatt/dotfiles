export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Initialize rbenv if installed
if test -d $HOME/.rbenv; then
  eval "$(rbenv init -)"
fi

# Initialize nodenv if installed
if test -d $HOME/.nodenv; then
  eval "$(nodenv init -)"
fi

# Initialize jenv if installed
if test -d $HOME/.jenv; then
  eval "$(jenv init -)"

  export PATH="$HOME/.jenv/bin:$PATH"
  export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"

  alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
fi
