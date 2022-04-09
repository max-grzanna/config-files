
## Installation

Install Nvim Linux

```bash
  sudo apt install neovim

```
    
Install Nvim Mac

```bash
  brew install neovim
```

## Nvim Config

```bash
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim 
```

To use Plugin install Vim-Plugin
https://github.com/junegunn/vim-plug

### Unix
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```