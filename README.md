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

## Instalation
```
cd ~/.config/
git clone https://github.com/MarkelCA/init.lua nvim
cd nvim
nvim lua/markelca/packer.lua
:so
:PackerInstall
```

## Font
Install Jetbrains Mono font from [NerdFonts](https://www.nerdfonts.com/font-downloads)
```bash
mkdir -p ~/.local/share/fonts/ttf
cd ~/.local/share/fonts/ttf
unzip <your/downloaded/path/JetBrainsMono.zip>
# Add the font to your terminal configuration
```
In my case it's already added into [my Alacritty config](https://gist.github.com/MarkelCA/a2e7be7979131855b311e3586d333cd9)
## Preview
![image](https://github.com/MarkelCA/init.lua/assets/76633510/97e7e3ee-779a-4bf6-9919-3ad77940b7d8)
