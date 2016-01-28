
##Quick Install Linux

```
  curl https://raw.githubusercontent.com/a-r-d/dotfiles/master/nix/.bash_profile > ~/.bash_profile && source ~/.bash_profile
```

##Update/install all

Clone to home first


### linux
```
  # grab this
  cd ~
  git clone https://github.com/a-r-d/dotfiles.git

  # setup zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp dotfiles/nix/. . -R
  chsh -s /bin/zsh

  # setup vim
  git clone https://github.com/amix/vimrc.git ~/.vim_runtime
  cd ~
  sh ~/.vim_runtime/install_awesome_vimrc.sh
  cp ~/dotfiles/nix/.vim_runtime/my_configs.vim ~/.vim_runtime/my_configs.vim

```


### cygwin
```
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  cp dotfiles/cygwin/. . -R

```


## Vim Configs:

Awesome vim:
https://github.com/amix/vimrc

All kinds of good configs:
https://github.com/garybernhardt/dotfiles


### Refresh plugins
```
cd ~
cp dotfiles/nix/. . -R
sh ~/.vim_runtime/install_awesome_vimrc.sh
```



## Fresh install commands

### linux


```
sudo apt-get update
sudo apt-get install -y git git-core nodejs npm memcached
sudo npm i -g n
sudo n stable
sudo npm i -g bower grunt-cli yo
sudo apt-get install vim-gtk chromium-browser wget zsh ctags
cd ~
mkdir projects


# these are all maybes:
sudo apt-get install -y mongodb
sudo apt-get install -y nginx
sudo npm i -g forever

```
