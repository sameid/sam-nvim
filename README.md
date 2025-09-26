# sam-nvim (a Simple And Minimal neovim config)

A minimal yet powerful Neovim configuration that just works. Made for the uninitiated by the uninitiated.  
This setup includes modern plugins for productivity, coding assistance, and a clean UI.

---

![screenshot-1](https://private-user-images.githubusercontent.com/3578747/494244891-3dc2fcb6-33da-459c-a77b-e9e638ccb06f.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTg4NjQwOTEsIm5iZiI6MTc1ODg2Mzc5MSwicGF0aCI6Ii8zNTc4NzQ3LzQ5NDI0NDg5MS0zZGMyZmNiNi0zM2RhLTQ1OWMtYTc3Yi1lOWU2MzhjY2IwNmYucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQVZDT0RZTFNBNTNQUUs0WkElMkYyMDI1MDkyNiUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyNTA5MjZUMDUxNjMxWiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9ZjhjYmIyMDAxNjVmNjhkNDYwYWYyNDczNjhhZGQ5NmVlNTgxOGQyNWI4NDdkZmYzN2M0NjIwOTg4YTU5MTNiMyZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QifQ.M7uKw9R1ilz0MZyiUgsKg4mgt9wLBhJ_H7fEUMzZMbw)

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

### Theming

I'm currently trying out oxocarbon, but my usual default is onedark

- [onedark.nvim](https://github.com/navarasu/onedark.nvim) – clean dark colorscheme
- [oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim) – clean oxocarbon colorscheme

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
