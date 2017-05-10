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
# status --is-interactive; and source (jenv init -|psub)
# set PATH $HOME/.jenv/bin $PATH
# jenv enable-plugin export # automatically sets JAVA_HOME on directory change
