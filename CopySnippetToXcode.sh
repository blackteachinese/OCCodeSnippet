#! /bin/bash


# 创建目录

if [[ ! -d "$HOME/Library/Developer/Xcode/UserData/CodeSnippets" ]]; then
	#statements
	mkdir ~/Library/Developer/Xcode/UserData/CodeSnippets
	echo 'create CodeSnippets folder'
fi

LIST='ls ~/Library/Developer/Xcode/UserData/CodeSnippets'
if [[ -z LIST ]]; then
	#目录空，直接拷贝过去
	cp -r `pwd`/CodeSnippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets/
	echo 'folder is empty copy the snippet to xcode snippet folder'
else
	#备份再拷贝
	OLDPATH='~/Library/Developer/Xcode/UserData/CodeSnippetsOld/'
	mkdir ~/Library/Developer/Xcode/UserData/CodeSnippetsOld/
	echo 'create  folder'$OLDPATH
	mv ~/Library/Developer/Xcode/UserData/CodeSnippets/ ~/Library/Developer/Xcode/UserData/CodeSnippetsOld/
	echo 'backup the old xcode snippets to '$OLDPATH
	cp -r `pwd`/CodeSnippets/ ~/Library/Developer/Xcode/UserData/CodeSnippets/
	echo
fi
