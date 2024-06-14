# Dotfile

## Setup
### Prerequisites 
1. [Packer](https://github.com/wbthomason/packer.nvim)
2. [Alacritty](https://formulae.brew.sh/cask/alacritty)
3. [Neovim](https://formulae.brew.sh/formula/neovim)

### Instructions 
1. Clone to `~`
2. `cd dotfiles`
3. `stow .`

### NeoVim Setup
```
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update

sudo apt-get install neovim
```

### Additional Neovim Setup
1. `cd nvim/lua/lukeqwas`
2. `:PackerSync`
