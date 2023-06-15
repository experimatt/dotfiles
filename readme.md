# Instructions

   Step-by-step instructions to setup a new mac

## Command line

### [generate ssh key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
  ```
ls -al ~/.ssh                           # check for existing SSH key
ssh-keygen -t ed25519 -C "EMAIL"        # generate new SSH key
eval "$(ssh-agent -s)"                  # make sure ssh agent is running
touch ~/.ssh/config                     # create ssh config

# add lines following to ssh config
Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ed25519

ssh-add -K ~/.ssh/id_ed25519            # add SSH key to ssh-agent
cat ~/.ssh/id_ed25519.pub               # show SSH key so you can copy to github
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
eval "$(/opt/homebrew/bin/brew shellenv)" # initialize brew
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap heroku/brew
```

### brew install
Review cask-list and brew-list before running.

```
cat ~/dotfiles/cask-list | xargs brew install
cat ~/dotfiles/brew-list | xargs brew install
```

## Terminal setup

### fish setup
```
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
mkdir -p .config/fish
ln -sF ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sF ~/dotfiles/fish/functions ~/.config/fish
# restart terminal
```

### basic bash/zsh setup
```
ln -sF dotfiles/bash/.bash_profile ~/.bash_profile
ln -sF dotfiles/bash/.bashrc ~/.bashrc
ln -sF dotfiles/zsh/.zprofile ~/.zprofile

touch ~/.hushlogin # hush last login in terminal
```

### additional zsh setup (mac default)
TODO: REVISIT THIS IN THE FUTURE

Only needed if using zsh as primary shell.

```
ln -sF dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
cd dotfiles
git submodule init
git submodule update
chsh -s /bin/zsh
# restart terminal
```

### git setup
```
cp ~/dotfiles/.gitconfig ~/.gitconfig
# open the file and update email address
```

### other setup

* Install Rosetta after brew & brew cask install (e.g. when opening spectacle)
* VS Code: Sign into github to sync vscode settings

### version management

#### [asdf](https://asdf-vm.com/#/core-manage-asdf)
```
brew install asdf                   # if not already installed
asdf plugin add ruby                # if needed
asdf plugin add nodejs              # if needed
ln -sF dotfiles/.asdfrc ~/.asdfrc
```

## Manual setup

### System preferences

  * Trackpad Settings > Scroll & Zoom > uncheck "Scroll direction: natural"
  * Keyboard > Key Repeat > Fast
  * Keyboard > Delay Until Repeat > Short
  * Keyboard > Modifier Keys... > Change Caps Lock to Esc
  * Dock & Menu Bar > Battery > Show Percentage
  * Spotlight > Search results > Uncheck "Siri Suggestions"
  * Sound > Uncheck "Play user interface sound effects"
  * Finder Preferences > Change sidebar favorites
  * Security & Privacy > Require password 5 seconds after sleep or screen saver
  * Displays > Nightshift > Custom > 10:00 PM to 7:00 AM

  Optional
  * General > Dark theme
  * Touch ID > Add Fingerprint
  * Displays > Slightly more space (optional, depends on screen size)

## No longer used

### atom
```
# open atom
# install sync-settings
# enter gist ID 9ac9a9855962fffe63a9a7f845937f51
  [github gist](https://gist.github.com/experimatt/9ac9a9855962fffe63a9a7f845937f51)
```

#### rbenv & nodenv
```
brew install rbenv nodenv
```