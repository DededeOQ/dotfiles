# 🐧 My Dotfiles

A collection of my personal configuration files managed with **GNU Stow**.

## 🛠️ Included Tools
- **Neovim**: Custom Lua configuration.
- **Alacritty**: Fast, GPU-accelerated terminal.
- **Git**: Global identity and aliases.
- *(Próximamente)* **WM**: Window manager configs.

## 🚀 Installation
1. Clone the repo: `git clone https://github.com/DededeOQ/dotfiles.git ~/dotfiles`
2. Install Lua (lua5.4)

### Terminal: Alacritty
GPU-accelerated terminal for maximum responsiveness.

```bash
sudo apt update
sudo apt install alacritty -y
# Create config directory
mkdir -p ~/.config/alacritty
# Copy config from this repo
cp ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/
```
