# sam-nvim (a Simple And Minimal neovim config)

A minimal yet powerful Neovim configuration that just works. Made for the uninitiated by the uninitiated.  
This setup includes modern plugins for productivity, coding assistance, and a clean UI.

---

![screenshot-1](https://dfn06qzp9zed9.cloudfront.net/sam-nvim/sam-nvim-1.png)
![screenshot-2](https://dfn06qzp9zed9.cloudfront.net/sam-nvim/sam-nvim-2.png)

## 📦 Plugins Included

- [lazy.nvim](https://github.com/folke/lazy.nvim) – uses lazy for plugins
- [alpha-nvim](https://github.com/goolord/alpha-nvim) – startup screen
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) – tab-like buffer management
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) – statusline
- [which-key.nvim](https://github.com/folke/which-key.nvim) – keybinding hints
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) – auto-close brackets/quotes
- [nvim-comment](https://github.com/terrortylor/nvim-comment) – easy commenting
- [conform.nvim](https://github.com/stevearc/conform.nvim) – code formatter
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua) – AI-powered coding assistant
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) – git diff signs in the gutter
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) – indentation guides
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) – fuzzy finding and search
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) – file explorer
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – autocompletion
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) – highlight and track TODOs
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – syntax highlighting and parsing
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) – Auto generate closing tags
- [mason.nvim](https://github.com/williamboman/mason.nvim) – install LSPs, linters, and formatters
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) – easy way to toggle the terminal
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) – just some nice scrolling animation
- [flash.nvim](https://github.com/folke/flash.nvim) - quick code navigation

### Theming

I'm currently trying out other options, but my usual default is tokyodark

- [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim) – clean dark colorscheme

---

## 🚀 Installation

### Install neovim

```bash

# Windows Install
choco install neovim

# Or MacOS Install
brew install neovim
```

More information about how to install neovim can be found [here](https://github.com/neovim/neovim/blob/master/INSTALL.md)

### Install sam-nvim setup

```bash
# Backup your existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/sameid/sam-nvim.git ~/.config/nvim

# Launch nvim
nvim
```

Plugins will install automatically on first run.

## 🛠️ Requirements

- Neovim 0.9+
- git
- [A Nerd Font (for icons)](https://www.nerdfonts.com/font-downloads)
- Node.js (for Copilot)

## WIP

- Improving which-key richness and overall key bindings to have more intuitive defaults
- May switch out telescope with fzf-lua

## 🤝 Contributing

Feel free to fork and tweak this config to your liking.
Pull requests are welcome!

## 📜 License

MIT License

## Special Thanks

- [LazyVim](https://github.com/LazyVim)
- [Josean Martinez](https://github.com/josean-dev)
