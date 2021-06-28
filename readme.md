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
brew tap homebrew/cask
brew tap homebrew/versions
brew tap heroku/brew
```

### brew install
```
cat ~/dotfiles/cask-list | xargs brew install
cat ~/dotfiles/brew-list | xargs brew install
```

### fish setup
```
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p .config/fish
ln -sF ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sF ~/dotfiles/fish/functions ~/.config/fish
```

### bash setup
```
ln -sF dotfiles/bash/.bash_profile ~/.bash_profile
ln -sF dotfiles/bash/.bashrc ~/.bashrc
```

### misc setup
```
touch ~/.hushlogin # hush last login in terminal
```

### git setup
```
cp ~/dotfiles/.gitconfig ~/.gitconfig
# open the file and update email address
```

### atom config
```
# open atom
# install sync-settings
# enter gist ID 9ac9a9855962fffe63a9a7f845937f51
  [github gist](https://gist.github.com/experimatt/9ac9a9855962fffe63a9a7f845937f51)
```

## Manual setup

### System preferences

  * Trackpad Settings > Scroll & Zoom > uncheck Scroll direction: natural
  * Keyboard > Key Repeat > Fast
  * Keyboard > Delay Until Repeat > Short
  * Keyboard > Modifier Keys... > Change Caps Lock to Esc
  * General > Dark theme
  * Dock & Menu Bar > Battery > Show Percentage
  * Touch ID > Add Fingerprint
  * Finder Preferences > Change sidebar favorites
  * Security & Privacy > Require password 5 seconds after sleep or screen saver
  * Displays > Slightly more space (depends on screen size)
  * Displays > Nightshift > Custom > 10:00 PM to 7:00 AM


## Not used

### vscode setup
Haven't tested this yet - can probably just use an extension to ssync settingsinstead.

```
ln -sF ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
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
