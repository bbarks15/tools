#!/usr/bin/env bash

if [ ! -d "~/.local/bin" ]; then
    echo "MAKING ~/.local/bin"
    mkdir -p ~/.local/bin
fi
echo "MOVING STUFF TO ~/.local/bin"
cp -r bin/* ~/.local/bin 

if [ ! -d "~/.config" ]; then
    echo "MAKING ~/.config"
    mkdir -p ~/.config
fi
echo "MOVING STUFF TO ~/.config"
cp -r nvim ~/.config
cp -r shell_stuff/fish ~/.config

echo "MOVING .tmux.conf"
cp -r .tmux.conf ~/.tmux.conf
