# sam-nvim (A simple neovim config)

A minimal yet powerful Neovim configuration that just works. Made for the uninitiated by the uninitiated.  
This setup includes modern plugins for productivity, coding assistance, and a clean UI.

---

## 📦 Plugins Included

- [lazy.nvim](https://github.com/folke/lazy.nvim) – uses lazy for plugins
- [alpha-nvim](https://github.com/goolord/alpha-nvim) – startup screen
- [onedark.nvim](https://github.com/navarasu/onedark.nvim) – clean dark colorscheme
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
- [mason.nvim](https://github.com/williamboman/mason.nvim) – install LSPs, linters, and formatters

---

## 🚀 Installation

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

## 🤝 Contributing

Feel free to fork and tweak this config to your liking.
Pull requests are welcome!

## 📜 License

MIT License

## Special Thanks

- [LazyVim](https://github.com/LazyVim)
- [Josean Martinez](https://github.com/josean-dev)
