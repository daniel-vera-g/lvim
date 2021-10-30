#!/bin/zsh

fetchNvim () {
        pushd ~/.local/bin > /dev/null && if [ -e ./nvim ]
        then
                rm ./nvim
        fi && curl -Ls https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o nvim && chmod u+x ./nvim && popd > /dev/null && echo 'nvim nightly successfully installed/updated!'
}

fetchNvim && lvim +LvimUpdate +PackerSync
