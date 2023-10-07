#! /bin/sh
#
#
type ctags
if [ $?  != 0 ];then
	sudo apt-get install universal-ctags
fi

type cscope
if [ $? != 0 ];then
	sudo apt-get install cscope
fi

if [ -d ~/.vim ];then
	mv ~/.vim ~/.vim.bk
	mv ~/.vimrc ~/.vimrc.bk
fi

# deploy 
cp -rf vim ~/.vim
cp vimrc ~/.vimrc

echo "Please enjoy your vim journal!"
