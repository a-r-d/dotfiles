# deps
sudo apt-get install -y git vim zsh wget
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install requests
  
# setup zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# only copy the zshrc dotfile on linux.
cp ~/dotfiles/nix/.zshrc ~/.zshrc  
cp ~/dotfiles/nix/.bash_profile ~/.bash_profile
chsh -s /bin/zsh

# setup vim or refresh install
git clone https://github.com/a-r-d/vimrc.git ~/.vim_runtime
cd ~/.vim_runtime && python update_plugins.py && cd ..
sh ~/.vim_runtime/install_awesome_vimrc.sh

## things needed for plugins:
npm install -g jshint

# ag search plugin
apt-get install silversearcher-ag

# go look at the main readme for YouCompleteMe plugin install copypasta.

