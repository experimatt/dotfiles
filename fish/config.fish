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
  source /usr/local/opt/asdf/asdf.fish
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
