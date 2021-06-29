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

# Installs Task 
brew install go-task/tap/go-task