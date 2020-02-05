echo 'Installing oh-my-zsh...';
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'Done';

echo 'Installing hammerspoon...';
brew cask install hammerspoon
echo 'Done';
