#!/bin/bash

WORKDIR=$(dirname $(readlink -f $0))
VENV_PYTHON=$HOME/.config/envs/py

echo "Installing some useful packages..."
# sudo apt update && \
    sudo apt install -y git vim scrot xclip compton tmux i3 brightnessctl feh \
        virtualenv keepassxc rofi

echo "Adding $USER to video group to use brightnessctl"
sudo usermod -a -G video $USER

if [ ! -d "$HOME/.config" ]; then
    echo "$HOME/.config directory does not exist. Creating it..."
    mkdir $HOME/.config
fi

echo "Creating virtualenv 'py' with system's python3..."
virtualenv $VENV_PYTHON -p $(which python3)

echo "Setting VIM basic as the default editor..."
sudo update-alternatives --set editor /usr/bin/vim.basic

echo "Copying sudoers file to /etc/sudoers.d/ ..."
cp $WORKIR/sudoers_rhakamine /etc/sudoers.d/rhakamine
chmod 440 /etc/sudoers.d/rhakamine
chown root:root /etc/sudoers.d/rhakamine

echo "Copying .vimrc, .tmux.conf, i3/conf, i3status ..."
cp $WORKIR/vimrc $HOME/.vimrc
cp $WORKIR/tmux.config $HOME/.tmux.conf
if [ ! -d $HOME/.config/i3 ]; then
    mkdir -p $HOME/.config/i3
fi
cp $WORKIR/i3_config $HOME/.config/i3/config

if [ ! -d $HOME/.config/i3status ]; then
    mkdir -p $HOME/.config/i3status
fi
cp $WORKIR/i3status_config $HOME/.config/i3status/config

echo "Appending bashrc and bash_aliases files..."
cat $WORKDIR/bashrc >> $HOME/.bashrc
# If exists, append, if not, create it
if [ -f "$HOME/.bash_aliases" ]; then
    cat $WORKDIR/bash_aliases >> $HOME/.bash_aliases
else
    cp $WORKDIR/bash_aliases $HOME/.bash_aliases
fi
source $HOME/.bashrc

echo "Copying some scripts to $HOME/scripts..."
if [ ! -d "$HOME/scripts"]; then
    mkdir $HOME/scripts
fi
cp $WORKDIR/scripts/*.sh $HOME/scripts

echo "You may want to configure something else manually, like VPN, etc..."
echo "In your .bashrc file, search and delete the parts similar to the parts appended."
echo "Like the color prompt without the 'parse_git' that may exist in the original file."
echo "Done! Please reboot computer"
