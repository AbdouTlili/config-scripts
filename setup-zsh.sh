


which curdl > /dev/null

if [ $? -eq 0 ]
then 
    echo "curl installed skipping"
else
    echo "no curl installed"
    echo "installing curl"
    sudo apt install curl 
fi

