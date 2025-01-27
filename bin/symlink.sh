#!/bin/zsh

DOTFILES_DIR="$HOME/.dotfiles"
DEST_CONFIG_DIR="$HOME/.config"

FILES=("nvim" "skhd" "yabai" ".gitconfig" ".zshrc" ".tmux.conf" "bin" "alacritty")
CORE=(
    "fzf"
    "ripgrep"
    "neovim"
    "powerlevel10k"
    "node"
    "zsh-autosuggestions"
    "tmux"
    "alacritty"
)

pushd "$HOME" > /dev/null

# # check if homebrew exist 
# if ! command -v brew &>/dev/null; then
#     echo "Homebrew is not installed, installing now..."
#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# else
#     echo "Homebrew is already installed"
# fi
#
# # add homebrew path
# if ! grep -q 'export PATH="/opt/homebrew/bin:$PATH"' ~/.zprofile; then
#     echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zprofile
#     echo "Homebrew path added to ~/.zprofile"
# else
#     echo "Homebrew path already exists in ~/.zprofile"
# fi
#
#
# # install core pkgs
# for CORE in "${CORE[@]}"; do
#     if ! brew list "$CORE" &>/dev/null; then
#         echo "Installing formula: $CORE"
#         brew install "$CORE"
#     else
#         echo "Formula $CORE already installed"
#     fi
# done
#
# # check if the directory exists
# if [ ! -d "$DEST_CONFIG_DIR" ]; then
#   echo "Directory $DEST_CONFIG_DIR does not exist. Creating it..."
#   mkdir -p "$DEST_CONFIG_DIR"
# else
#   echo "Directory $DEST_CONFIG_DIR already exists."
# fi
#
# # symlink config files
# for file in "${FILES[@]}"; do
#     src="$DOTFILES_DIR/$file"
#     dest_config="$DEST_CONFIG_DIR/$file"
#     home="$HOME/$file"
#
#     if [[ "$file" == "nvim" || "$file" == "yabai" || "$file" == "skhd" || "$file" == "alacritty" ]]; then
#         if [[ ! -L "$dest_config" ]]; then
#             ln -s "$src" "$dest_config" 
#             echo "$file link created"
#         else
#             echo "$file already exist"
#         fi
#
#     else
#         if [[ ! -L "$home" ]]; then
#             ln -s "$src" "$home"
#             echo "$file link created"
#         else
#             echo "$file already exist"
#         fi
#
#     fi
# done

# tmux
TMUX_PLUGIN_DIR="$HOME/.tmux/plugins/tpm"
TMUX_CONF="$HOME/.tmux.conf"
# Step 2: Clone TPM (Tmux Plugin Manager) if it's not already installed
if [ ! -d "$TMUX_PLUGIN_DIR" ]; then
  echo "Cloning TPM (Tmux Plugin Manager)..."
  git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGIN_DIR
else
  echo "TPM is already installed."
fi
# Check if tmux is running, if so, source the config and install plugins
if tmux has-session -t 2>/dev/null; then
  echo "Tmux is already running, reloading configuration and installing plugins..."
  # tmux new-session -d -s "source-file $TMUX_CONF; tmux run-shell '$TMUX_PLUGIN_DIR/scripts/install_plugins.sh';"
else
  echo "Tmux is not running, starting tmux and installing plugins..."
  # tmux new-session -d -s "source-file $TMUX_CONF; tmux run-shell '$TMUX_PLUGIN_DIR/scripts/install_plugins.sh';"
fi

popd > /dev/null
