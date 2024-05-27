#!/bin/zsh

DOTFILES_DIR="$HOME/.dotfiles"
DEST_CONFIG_DIR="$HOME/.config"

FILES=("nvim" "skhd" "yabai" ".tmux" ".gitconfig" ".zshrc" ".tmux/.tmux.conf" "bin")

pushd "$HOME" > /dev/null

for file in "${FILES[@]}"; do
    src="$DOTFILES_DIR/$file"
    dest_config="$DEST_CONFIG_DIR/$file"
    home="$HOME/$file"

    if [[ "$file" == "nvim" || "$file" == "yabai" || "$file" == 'skhd' ]]; then
        if [[ ! -L "$dest_config" ]]; then
            ln -s "$src" "$dest_config" 
            echo "$file link created"
        else
            echo "$file already exist"
        fi

    elif [[ "$file" == ".tmux/.tmux.conf" ]]; then
        if [[ ! -L "$HOME/.tmux.conf" ]]; then
            ln -s "$src" "$HOME/.tmux.conf" 
            echo "$file link created"
        else
            echo "$file already exist"
        fi

    else
        if [[ ! -L "$home" ]]; then
            ln -s "$src" "$home"
            echo "$file link created"
        else
            echo "$file already exist"
        fi

    fi

done

popd > /dev/null
