#/bin/bash

echo "Setup zsh"
function check_zsh {
    if [ command -v zsh >/dev/null 2>&1 ]
    then
        echo "Not Present, Installing ...."
        brew install zsh \
        curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
        
    else
        echo "Zsh is already installed"
    fi
}
check_zsh


echo "#####################"
echo "Installing Custom ZSH Plugins"
echo "#####################"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "#####################"
echo "Installing ZSH Fonts & Colors"
echo "#####################"
brew tap sambadevi/powerlevel9k
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
gem install colorls

echo "#####################"
echo "Backing up existing config file"
echo "#####################"
mkdir ~/.backup 
cp ~/.zshrc ~/.backup/.zshrc.backup
cp ~/.p10k.zsh ~/.backup/.p10k.zsh.backup
echo "[x]....->....->....->....->[ ]"
echo "[ ]....->....->....->....->[X]"
echo "Done !!!"

echo "#####################"
echo "Copying across new Config"
echo "#####################"
yes | cp -rf shell/zsh_profile ~/.zshrc
yes | cp -rf shell/zsh_p10k_profile.zsh ~/.p10k.zsh
cp -rf shell/custom_zsh_plugins/ ~/.oh-my-zsh/custom/plugins/
echo "[x]....->....->....->....->[ ]"
echo "[ ]....->....->....->....->[X]"

echo "#####################"
echo "Setting default shell to ZSH"
echo "#####################"
chsh -s /bin/zsh
echo "#####################"
echo "#####################"
echo "Done !!!"