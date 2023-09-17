# init.lua
Rebuilding my nvim config with Lua. (Inpired by @ThePrimeagen)

## Dependencies

- [packer](https://github.com/wbthomason/packer.nvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
### Mason language server dependencies
- npm
- unzip
- go
  
*All can be easily installed as linux packages. Example:*
```bash
sudo pacman -S npm unzip go
sudo apt install npm unzip go
```

# Extra stuff
## Font
Install Jetbrains Mono font from [NerdFonts](https://www.nerdfonts.com/font-downloads)
```bash
mkdir -p ~/.local/share/fonts/ttf
cd ~/.local/share/fonts/ttf
unzip <your/downloaded/path/JetBrainsMono.zip> 
```
