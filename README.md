Hey IDE Vim Plugin
==================

Installation instructions
-------------------------
- With [Pathogen](https://github.com/tpope/vim-pathogen)

`git clone https://github.com/hey-network/hey.vim.git ~/.vim/bundle`

- With [Vundle](https://github.com/VundleVim/Vundle.vim)

In your .vimrc, add `hey-network/hey.vim` to your Vundle Plugins.

Then launch vim and run `:PluginInstall` (or by command line `vim +PluginInstall +qall`)

- With [apt-vim](https://github.com/egalpin/apt-vim)

`apt-vim install -y https://github.com/hey-network/hey.vim.git`


How to use
----------
1. Select some code in visual mode.

2. Type `:call AskHey(':YOUR_QUESTION')`.

3. You'll receive a token as the result of a curl request.

4. Go to https://ide.hey.network/p/:TOKEN.
