#/bin/bash

echo "Setting up Software"
echo " -------------------------"
echo "#####################"
echo " Checking for Homebrew"
echo "#####################"
function check_homebrew {
    if [ command -v homebrew >/dev/null 2>&1 ]
    then
        echo "Not Present, Installing ...."
        mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | \
        tar xz --strip 1 -C homebrew
    else
        echo "Homebrew is already installed"
    fi
}
check_homebrew

echo "#####################"
echo " Checking for XCode"
echo "#####################"
function check_xcode {
    if [ command -v xcode >/dev/null 2>&1 ]
    then
        echo "Not Present, Installing ...."
        xcode-select --install
    else
        echo "XCode is already installed"
    fi
}
check_xcode


echo ""
echo ""
echo "#####################"
echo "Upgrade existing applications"
echo "#####################"
brew upgrade

echo ""
echo ""
echo "#####################"
echo "Installing tools"
echo "#####################"
brew install bat
brew install fish
brew install git
brew install htop
brew install nmap
brew install python@3
brew install terminal-notifier
brew install tree
brew install wget


echo ""
echo ""
echo "#####################"
echo "Installing iTerm2 and Themes"
echo "#####################"
brew cask install iterm2
cd ~/Downloads
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors


echo "#####################"
echo "Installing Cloud Tools AWS & GCP"
echo "#####################"

echo "-->  AWS Cli"  
brew install awscli
echo "-->  GCP Cli"  
brew cask install google-cloud-sdk

echo "#####################"
echo "Installing Kubernetes Tools"
echo "#####################"
echo "--> Installing...."  
brew install kubernetes-cli
brew install kubectx
brew install kustomize
brew install stern
echo "--> Installing.... Helm" 
brew install helm
echo "--> Installing.... EKS Tools" 
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

echo "#####################"
echo "Installing Istioctl Tools" 
brew install istioctl

echo "#####################"
echo "Installing Open Policy Agent Tools" 
brew install opa
brew install instrumenta/instrumenta/conftest

echo "#####################"
echo "Installing Terraform Tools" 
brew install terraform
echo ""
echo ""
echo "#####################"
echo "Done !!!!"
echo "#####################"
