
Quick Install Linux
=====================
```
  curl https://raw.githubusercontent.com/a-r-d/dotfiles/master/nix/.bash_profile > ~/.bash_profile && source ~/.bash_profile
```

Update all
==============

(from clone to home)

```
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp dotfiles/nix/. . -R
```

```
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  cp dotfiles/cygwin/. . -R

```
