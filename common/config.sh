export PROJECT_HOME="$HOME/projects"
export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

# Initialize homebrew if installed
if test -d /opt/homebrew/bin; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Initialize asdf if installed
if command -v asdf &> /dev/null; then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fi

# Initialize rbenv if installed
if test -d $HOME/.rbenv; then
  eval "$(rbenv init -)"
fi

# Initialize nodenv if installed
if test -d $HOME/.nodenv; then
  eval "$(nodenv init -)"
fi

# source private stuff
if test -f $HOME/dotfiles/common/private_config.sh; then
  source $HOME/dotfiles/common/private_config.sh
fi