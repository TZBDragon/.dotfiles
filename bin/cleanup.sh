#!/bin/bash




#Removes .nanorc
rm ~/.nanorc
#Removes last line
sed -i 's?source ∼/.dotfiles/etc/bashrc_custom??' ~/.bashrc
#removes .Trash directory
rmdir ~/.TRASH

echo Complete
