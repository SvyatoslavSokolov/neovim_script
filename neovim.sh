#!/bin/bash

# Download and install fonts
download_fonts() {
  echo "[INFO] Downloading fonts..."
  wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Ubuntu.zip -O Ubuntu.zip
  unzip -o Ubuntu.zip -d ~/.fonts > /dev/null
  fc-cache -fv > /dev/null
  rm Ubuntu.zip
  echo "[INFO] Fonts installed successfully!"
}

# Download and install Neovim
install_neovim() {
  echo "[INFO] Downloading and installing Neovim..."
  curl -s -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o nvim.appimage
chmod u+x nvim.appimage
# ./nvim.appimage
  sudo mv nvim.appimage /usr/local/bin/nvim
  echo "[INFO] Neovim installed successfully!"
}

# Clone AstroNvim configuration
clone_astronvim() {
  echo "[INFO] Cloning AstroNvim configuration..."
  git clone --quiet --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim > /dev/null
  echo "[INFO] AstroNvim configuration cloned successfully!"
}

# Main script
download_fonts
install_neovim
clone_astronvim