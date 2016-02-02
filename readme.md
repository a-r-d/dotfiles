##Quick Install Linux

```bash
  curl https://raw.githubusercontent.com/a-r-d/dotfiles/master/nix/.bash_profile > ~/.bash_profile && source ~/.bash_profile
```

##Update/install all

Clone to home first. Then install Oh-My-Zsh followed by the vim runtime. Vim runtime will need to be updated

## Features

All of these features work on both Linux and Cygwin, they are configured a bit differently to get the shortcuts to work on Cygwin however.

 - Ctrl-C is copy to clipboard from vim
 - Ctrl-V is copy into buffer from clipboard on vim
 - Ctrl-S writes the buffer on input mode in vim


### linux
```bash
  # clone this repo.
  cd ~
  git clone https://github.com/a-r-d/dotfiles.git

  # setup zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  # only copy the zshrc dotfile on linux.
  cp ~/dotfiles/nix/.zshrc ~/.zshrc  
  cp ~/dotfiles/nix/.bash_profile ~/.bash_profile
  chsh -s /bin/zsh

  # setup vim or refresh install
  git clone https://github.com/amix/vimrc.git ~/.vim_runtime
  cd ~/.vim_runtime && python update_plugins.py && cd ..
  sh ~/.vim_runtime/install_awesome_vimrc.sh
  cp ~/dotfiles/nix/.vim_runtime/my_configs.vim ~/.vim_runtime/my_configs.vim

```


### cygwin

Basically the same as the linux config except that I am using wget to download.

```bash
  # clone this repo.
  cd ~
  git clone https://github.com/a-r-d/dotfiles.git

  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  # copy all of the dotfiles to get ctrl+c/ctrl+v/ctrl+s shortcuts to work.
  cp dotfiles/cygwin/. . -R

  # setup vim or refresh install
  git clone https://github.com/amix/vimrc.git ~/.vim_runtime
  # may need to get pip and install request lib...
  cd ~/.vim_runtime && python update_plugins.py && cd ..
  sh ~/.vim_runtime/install_awesome_vimrc.sh
  # copy the plugin config back over, if it was lost.
  cp ~/dotfiles/nix/.vim_runtime/my_configs.vim ~/.vim_runtime/my_configs.vim

```


## Vim Configs:

Awesome vim:
https://github.com/amix/vimrc

All kinds of good configs:
https://github.com/garybernhardt/dotfiles


## Additional Vim Plugins

Indent line is a way of showing whitespace.

```bash
cd ~/.vim_runtime/sources_non_forked
## line indentation
git clone https://github.com/Yggdroot/indentLine
```

Auto completion research:
https://github.com/ervandew/supertab
https://github.com/Valloric/YouCompleteMe.git

```
## with javascript code completion
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive  
# at this point you must have CMake installed
python install.py --tern-completer
```


## Fresh install commands

### linux

```bash
sudo apt-get update
sudo apt-get install -y git git-core nodejs npm memcached
sudo npm i -g n
sudo n stable
sudo npm i -g bower grunt-cli yo
sudo apt-get install vim-gtk chromium-browser wget zsh ctags tree
cd ~
mkdir projects

# these are all maybes:
sudo apt-get install -y mongodb
sudo apt-get install -y nginx
sudo npm i -g forever

```
