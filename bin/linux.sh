#!/bin/bash


#If/Else Statement
if [ `uname` == 'Linux' ]
then
	#Tests for directory
	if [` test -d ~/.TRASH` ]
	then
		#Output if true	
		echo .Trash exists
	else
		#output if false
		mkdir ~/.TRASH
	fi
	#Tests that the file .nanorc exists
	if [` test -f ~/.nanorc` ]
	then
		#renames nanorc
		mv ~/.nanorc ~/.bup_nanorc
		#dialouge of change
		echo nanorc changed	
	else
		#Output if false
		echo nanorc not found
	fi
	#Overwrites .nanorc with nanorc
	echo .dotfiles/etc/nanorc >| ~/.nanorc
	#Appends text to the the end of the .bashrc file
	echo "source .dotfiles/etc/bashrc_custom" >> ~/.bashrc
else
	#Outputs to console error statement
	echo Error Not Linux
	uname
fi
