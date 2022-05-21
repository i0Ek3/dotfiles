#!/bin/bash

function cfg_pip()
{
    if [ -e $HOME/.pip ]
    then
        cp -r ./pip/pip.conf $HOME/.pip
    else
        mkdir -p $HOME/.pip
        cp -r ./pip/pip.conf $HOME/.pip
    fi
    echo "pip configurated!"
}

function cfg_zshrc()
{
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    cp -r ./zsh/zshrc-mac $HOME/.zshrc
    zsh
    echo "zshrc configurated!"
}

function cfg_vimrc()
{
    cp -r ./vim/vimrc $HOME/.vimrc
    source $HOME/.vimrc
    echo "vimrc configurated!"
}

function cfg_tmux()
{
    cp -r ./tmux/tmux.conf $HOME/.tmux.conf
    echo "tmux.conf configurated!"
}

function cfg_gitignore()
{
    cp -r ./gitignore/gitignore ~/.gitignore
    git config --global core.excludesfile ~/.gitignore
    echo "global gitignore configurated!"
}

function cfg_gitpaging()
{
    cp ./gitpaging/git* /usr/local/bin
    echo "git paging configurated!"
}

function install_theme4typora()
{
    cp -r ./typora-themes/* $HOME/Library/Application\ Support/abnerworks.Typora/themes
    echo "themes installed!"
}

function lines()
{
    echo "====================================="
}

function main()
{
    lines
    echo "Configurating pip/zshrc/vimrc/tmux..."
    lines
    #cfg_vimrc
    #lines
    cfg_zshrc
    lines
    cfg_tmux
    lines
    cfg_pip
    lines
    cfg_gitignore
    lines
    cfg_gitpaging
    lines
    zsh
    echo "All done, enjoys!"
    lines
}

main
