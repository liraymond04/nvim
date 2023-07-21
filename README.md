# nvim

My personal [neovim](https://github.com/neovim/neovim) configuration

Used as a submodule in my main [dotfiles](https://github.com/liraymond04/.dotfiles) repository

## Structure

Document points of interest in config file structure

```
nvim/               // root
├─ lua/
│  ├─ core/         // main vim configs
│  ├─ plugins/
│  │  ├─ configs/   // plugin setup
│  │  ├─ utils/
├─ init.lua         // entry point
```

### core

 - init.lua - loads in user options and handles basic flow
 - autocommands.lua - creates autocommands, per file vim options like spaces per tab are handled here
 - keymaps.lua - user defined key mappings
 - options.lua - user defined vim options
 - plugins.lua - plugin install and setup

### plugins
 - init.lua - returns
 table of plugins to install
 - setup.lua - include file for plugin configuration and setup
 - configs/ - contains
 configuration and setup for plugins
 - utils/ - contains utility functions not part of plugin setup
 
## Tips

 - Commenting out the `requires "core"` in the root `init.lua` disables the configuration (same as using unconfigured Neovim)
 - Commenting out `requires "core.plugins"` in `core/init.lua` disables user installed plugins
 - Individual plugins can be disabled by commenting out their requires lines in `plugins/setup.lua`
 - Plugins can be installed by adding a plugin's repo `[author]/[repo-name]` to the lua table in `plugins/init.lua`

## Setup

### Arch Linux

Install `nvim`

```bash
sudo pacman -S nvim
```

If copy and paste doesn't work, install `xsel`

```bash
sudo pacman -S xsel
```

Open Neovim with the `nvim` command

```bash
nvim
```

Plugins, language servers, and treesitter parsers should be installed when entering `nvim` for the first time (may need a restart after installation is complete)
