# change ls directory color
set -gx LSCOLORS Gxfxcxdxbxegedabagacad 

# use vi keybindings
fish_vi_key_bindings 

# Initialize rbenv
status --is-interactive; and source (rbenv init -|psub)

# Initialize nodenv
status --is-interactive; and source (nodenv init -|psub)

# Python (work only)
# set -x PATH $PATH $HOME/Library/Python/2.7/bin

# Initialize jenv (work only)
# if test -d $HOME/.jenv; then
#   eval "$(jenv init -)"
# 
#   export PATH="$HOME/.jenv/bin:$PATH"
#   export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
# 
#   alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
# fi
