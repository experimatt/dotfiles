# change ls directory color
set -gx LSCOLORS Gxfxcxdxbxegedabagacad

# use vi keybindings
fish_vi_key_bindings

# hide welcome message
set fish_greeting

# set colors
set fish_color_autosuggestion 555\x1ebrblack
set fish_color_command --bold
set fish_color_comment red
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end brmagenta
set fish_color_error brred
set fish_color_escape bryellow --bold
set fish_color_history_current --bold
set fish_color_host normal
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator bryellow
set fish_color_param cyan
set fish_color_quote yellow
set fish_color_redirection brblue
set fish_color_search_match bryellow --background=brblack
set fish_color_selection white --bold --background=brblack
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_completion
set fish_pager_color_description B3A06D yellow
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress brwhite --background=cyan

# helpful commands
alias bundle-ag="bundle show --paths | grep '/gems/' | xargs ag"

# Initialize homebrew
if test -d /opt/homebrew/bin
  eval (/opt/homebrew/bin/brew shellenv)
end

# Initialize rbenv if present
if test (which rbenv)
  status --is-interactive; and source (rbenv init -|psub)
end

# Initialize nodenv if present
if test (which nodenv)
  status --is-interactive; and source (nodenv init -|psub)
end

# Initialize asdf if present
if test (which asdf)
  if test -e (brew --prefix asdf)/asdf.fish
    source (brew --prefix asdf)/asdf.fish
  else
    source (brew --prefix asdf)/libexec/asdf.fish
  end
end

# add ./bin to PATH
set -x PATH ./bin $PATH

# add yarn bin to path if present (YARN v1 only. No longer applicable in v2+)
# if test (yarn global bin)
#   fish_add_path (yarn global bin)
# end

# Google Cloud SDK (work)
if test -f ~/google-cloud-sdk/path.fish.inc
  . ~/google-cloud-sdk/path.fish.inc
end

# add go to path if present
if test -d ~/go
  set -x GOPATH $HOME/go
  set -x PATH $PATH $GOPATH/bin
end

# credly local acclaim stats for docker
if test -d $HOME/projects/acclaim_stats
  set -x ACCLAIM_STATS_DIR $HOME/projects/acclaim_stats
end

# credly local rubymine for docker
if test -d $HOME/rubymine-empty
  set -x RUBYMINE_HELPERS_DIR $HOME/rubymine-empty
end

# credly helper command
if test -d $HOME/projects/acclaim-server
  alias dev-exec-core="docker compose -f docker-compose.dev.yml exec acclaim-server"
  alias dsh="docker compose -f docker-compose.dev.yml exec acclaim-server bash"
  alias dd="docker compose -f docker-compose.dev.yml exec acclaim-server"
  alias du="docker compose -f docker-compose.dev.yml up -d"
  alias db="docker compose -f docker-compose.dev.yml build"
  alias ds="docker compose -f docker-compose.dev.yml stop"
  alias dr="docker compose -f docker-compose.dev.yml create --force-recreate"
end

# add ssh key to ssh-agent
ssh-add -q

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
