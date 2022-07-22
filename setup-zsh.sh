

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

echo 
echo ""




sudo apt install zsh