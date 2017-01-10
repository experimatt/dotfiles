# Instructions

   Instructions to setup a mac just the way Matt likes it.

## System preferences
```
touch ~/.hushlogin # hush last login in terminal
defaults write -g com.apple.swipescrolldirection -bool FALSE # trackpad scroll direction
#TODO: Figure out other terminal commands to set system preferences
```

 * Trackpad Settings > Scroll & Zoom > uncheck Scroll direction: natural
 * Displays > Slightly more space
 * Security & Privacy > Require password 5 seconds
 * Desktop & Screen Saver > Screen Saver > Hot Corners > Bottom Left: Put computer to sleep


## Command line

### [SSH](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
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
ln -sF dotfiles/.bash_profile ~/.bash_profile
cp dotfiles/.bashrc ~/
# restart terminal
```

### homebrew
```
open http://brew.sh
# run command from website
brew tap caskroom/cask
brew tap caskroom/versions
```

### brew install
```
cat ~/dotfiles/cask-list | xargs brew cask install
cat ~/dotfiles/brew-list | xargs brew install
```

## Software config

### Terminal
 * Profile: Tomorrow Night Bright (via https://github.com/lysyi3m/osx-terminal-themes)
  * Text: bright green
  * Bold Text: light blue
 * Window: Columns 90; Rows 30

### Atom
 ```
 ln -s dotfiles/.atom .atom

 ```
