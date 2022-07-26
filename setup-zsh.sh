

echo Installing Zsh 

echo "1- checking if zsh is installed.."
echo

which zsh > /dev/null

if [ $? -eq 0 ]
then 
    echo "zsh installation skipped.."
else
    echo "no zsh installed"
    echo "installing zsh"
    sudo apt install zsh

    echo "setting default shell to zsh"
    chsh -s $(which zsh) 
fi

echo 

echo "2-  checking curl.."
echo

which curl > /dev/null

if [ $? -eq 0 ]
then 
    echo "curl installation skipped.."
else
    echo "no curl installed"
    echo "installing curl"
    sudo apt install curl 
fi


echo setting up zshconfig
sudo apt install zsh



echo copying default .zshrc to home dir
curl  -fsSL https://raw.githubusercontent.com/AbdouTlili/config-scripts/master/zshrc > ~/.zshrc 

echo setting zsh as default shell
chsh -s $(which zsh) 


echo installing synatx-highlighting plugin 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo installing zsh auto-suggestion plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# these installations are just cloning of the plugins' repos, nothing else needed as the default zshrc call them :)

source ~/.zshrc