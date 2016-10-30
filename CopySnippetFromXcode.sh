#! /bin/bash

if [[ ! -d "./CodeSnippets" ]]; then
	#statements
	mkdir ./CodeSnippets
	echo 'create CodeSnippets folder'
fi

cp -r  ~/Library/Developer/Xcode/UserData/CodeSnippets/ `pwd`/CodeSnippets/
echo 'copy finish'