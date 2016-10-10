git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim -c "BundleInstall" -c "qa!"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
