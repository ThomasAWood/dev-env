if test ! $(which brew); then
   echo "🍺 Installing Homebrew"
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew update
 else
   echo "Homebrew is already installed, skipping..."
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh already installed, skipping..."
fi

brew bundle
stow alacritty karabiner nvim tmux zsh
