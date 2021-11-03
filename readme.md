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
# run brew commands from output to add Homebrew to your path
#   eval ... >> /Users/[username]/.zprofile
#   eval "$(/opt/homebrew/bin/brew shellenv)"
brew tap homebrew/cask
brew tap heroku/brew
```

Note: As of Homebrew 3.0.0 the default installation on an M1 machine is going to be the Apple Silicon version and will be installed to `/opt/homebrew`.

### brew install
Review cask-list and brew-list before running.

```
cat ~/dotfiles/cask-list | xargs brew install
cat ~/dotfiles/brew-list | xargs brew install
```

## Terminal setup

### fish setup
New path is `/opt/homebrew/bin/fish`. Used to be `/usr/local/bin/fish`.

```
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
mkdir -p .config/fish
ln -sF ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sF ~/dotfiles/fish/functions ~/.config/fish
```

### bash setup
```
ln -sF dotfiles/bash/.bash_profile ~/.bash_profile
ln -sF dotfiles/bash/.bashrc ~/.bashrc
```

### zsh setup (if using)

```
ln -sF dotfiles/zsh/.zshrc ~/.zshrc
ln -sF dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
cd dotfiles
git submodule init
git submodule update
chsh -s /bin/zsh
source ~/.zshrc # or restart terminal
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

### vscode setup
Haven't tested this yet - can probably just use an extension to ssync settingsinstead.

```
ln -sF ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

### version management

#### [asdf](https://asdf-vm.com/#/core-manage-asdf) (experimental)
```
brew install asdf
brew plugin add ruby
brew plugin add nodejs
ln -sF dotfiles/.asdfrc ~/.asdfrc
```

#### rbenv & nodenv
```
brew install rbenv nodenv
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


## No longer used

### atom config
```
# open atom
# install sync-settings
# enter gist ID 9ac9a9855962fffe63a9a7f845937f51
  [github gist](https://gist.github.com/experimatt/9ac9a9855962fffe63a9a7f845937f51)
```


## 2021-11 Notes from M1 Max MBP setup
* TODO: Update readme instructions to account for `.zprofile` being the default instead of `.bash_profile`.
* Install Rosetta after brew & brew cask install
* 1Password 6 + classic extension
* New homebrew path starts with `/opt/homebrew` now (instead of `/usr/local`).