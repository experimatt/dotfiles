# Instructions

   Step-by-step instructions to setup a new mac

## Command line

### [generate ssh key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
  ```
ls -al ~/.ssh                           # check for existing SSH key
ssh-keygen -t rsa -b 4096 -C "EMAIL"    # generate new SSH key
eval "$(ssh-agent -s)"                  # make sure ssh agent is running
ssh-add ~/.ssh/id_rsa                   # add SSH key to ssh-agent
cat ~/.ssh/id_rsa.pub                   # show SSH key so you can copy to github
  ```

### install xcode tools
```
 xcode-select --install
```

### setup dotfiles
```
git clone git@github.com:experimatt/dotfiles.git
ln -sF dotfiles/.vimrc ~/.vimrc
```

### install homebrew
```
open http://brew.sh
# run curl command to install
brew tap caskroom/cask
brew tap caskroom/versions
```

### brew install
```
cat ~/dotfiles/cask-list | xargs brew cask install
cat ~/dotfiles/brew-list | xargs brew install

# if on a work machine
cat ~/dotfiles/work-cask-list | xargs brew cask install
cat ~/dotfiles/work-brew-list | xargs brew install
```

### zsh setup
```
ln -sF dotfiles/zsh/.zshrc ~/.zshrc
ln -sF dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
cd dotfiles
git submodule init
git submodule update
chsh -s /bin/zsh
source ~/.zshrc # or restart terminal
```

### fish setup
```
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
ln -sF dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sF dotfiles/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
```

### bash setup
```
ln -sF dotfiles/bash/.bash_profile ~/.bash_profile
ln -sF dotfiles/bash/.bashrc ~/.bashrc
```

### misc setup
```
touch ~/.hushlogin # hush last login in terminal
jenv enable-plugin export # automatically sets JAVA_HOME on directory change
```

## Manual setup

### atom config
 ```
 # install sync-settings and sync to github gist
 ```

### System preferences

  * Trackpad Settings > Scroll & Zoom > uncheck Scroll direction: natural
  * Show Battery Percentage
  * Finder Preferences > Change sidebar favorites
  * Security & Privacy > Require password 5 seconds after sleep or screen saver
  * Desktop & Screen Saver > Screen Saver > Hot Corners > Bottom Left: Put display to sleep
  * Keyboad > Modifier Keys... > Change Caps Lock to Esc
  * Displays > Slightly more space (depends on screen size)
  * Displays > Nightshift > Custom > 10:00 PM to 7:00 AM
  
