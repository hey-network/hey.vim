Hey IDE Vim Plugin
==================

Installation instructions
-------------------------
1. With Pathogen

`git clone https://github.com/hey-network/hey.vim.git ~/.vim/bundle`

2. With Vundle

In your .vimrc, add `hey-network/hey.vim` to your Vundle Plugins

3. With apt-vim

`apt-vim install -y https://github.com/hey-network/hey.vim.git`


How to use
----------
Select some code in visual mode.

Type `:call AskHey(':YOUR_QUESTION')`.

You'll receive a token as the result of a curl request.

Go to https://ide.hey.network/p/:TOKEN.
