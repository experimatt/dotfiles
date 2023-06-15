export PROJECT_HOME="$HOME/projects"
export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

# Initialize asdf if installed
if command -v asdf &> /dev/null; then
  source "$(brew --prefix asdf)/asdf.sh"
fi

# Initialize rbenv if installed
if test -d $HOME/.rbenv; then
  eval "$(rbenv init -)"
fi

# Initialize nodenv if installed
if test -d $HOME/.nodenv; then
  eval "$(nodenv init -)"
fi

## No longer used

# Initialize python stuff
# if test -d .virtualenvs; then
#   export PATH="$HOME/Library/Python/2.7/bin:$PATH"
#   export WORKON_HOME="$HOME/.python/virtualenvwrapper"
#   source virtualenvwrapper.sh
# fi
