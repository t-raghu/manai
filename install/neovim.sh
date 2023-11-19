wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
 ./nvim.appimage --appimage-extract
mv squashfs-root $HOME/work/ws/tools/neovim
ln -s $HOME/work/ws/tools/neovim/usr/bin/nvim $HOME/work/ws/tools/bin
