# Instructions

   Step-by-step instructions to setup a new mac

## Command line

### [ssh key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
  ```
ls -al ~/.ssh                           # check for existing SSH key
ssh-keygen -t rsa -b 4096 -C "EMAIL"    # generate new SSH key
eval "$(ssh-agent -s)"                  # make sure ssh agent is running
ssh-add ~/.ssh/id_rsa                   # add SSH key to ssh-agent
cat ~/.ssh/id_rsa.pub                   # show SSH key so you can copy to github
  ```

### xcode
```
 xcode-select --install   # installs xcode command line tools
```

### dotfiles
```
git clone git@github.com:experimatt/dotfiles.git
# may need to open run curl command from https://github.com/robbyrussell/oh-my-zsh
ln -sF dotfiles/.zshrc ~/.zshrc
ln -sF dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -sF dotfiles/.vimrc ~/.vimrc
source ~/.zshrc # or restart terminal
# may need to run `git submodule update` or some variant
```

### homebrew
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

### atom
 ```
 # install sync-settings and sync to github gist

 ```

## System preferences
 ```
 touch ~/.hushlogin # hush last login in terminal
 ```

  * Trackpad Settings > Scroll & Zoom > uncheck Scroll direction: natural
  * Show Battery Percentage
  * Finder Preferences > Change sidebar favorites
  * Displays > Slightly more space (depends on screen size)
  * Security & Privacy > Require password 5 seconds
  * Desktop & Screen Saver > Screen Saver > Hot Corners > Bottom Left: Put computer to sleep
  * Keyboad > Modifier Keys... > Change Caps Lock to Esc
  * Displays > Nightshift > Custom > 10:00 PM to 7:00 AM
