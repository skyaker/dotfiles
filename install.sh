#!/bin/bash

DOTFILES_DIR=$(pwd)

link_config() {
    local name=$1
    mkdir -p "$HOME/.config"
    rm -rf "$HOME/.config/$name"
    ln -s "$DOTFILES_DIR/$name" "$HOME/.config/$name"
}

link_home() {
    local file=$1
    rm -rf "$HOME/$file"
    ln -s "$DOTFILES_DIR/$file" "$HOME/$file"
}

CONFIG_APPS=("nvim" "kitty" "sketchybar" "fastfetch" "borders")

for app in "${CONFIG_APPS[@]}"; do
    if [ -d "$app" ]; then
        link_config "$app"
    fi
done

HOME_FILES=(".zshrc" ".tmux.conf")

for file in "${HOME_FILES[@]}"; do
    if [ -f "$file" ]; then
        link_home "$file"
    fi
done

if [ -d ".hammerspoon" ]; then
    rm -rf "$HOME/.hammerspoon"
    ln -s "$DOTFILES_DIR/.hammerspoon" "$HOME/.hammerspoon"
fi
