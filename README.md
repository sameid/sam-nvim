# sam-nvim (A simple neovim config)

A minimal yet powerful Neovim configuration that just works. Made for the uninitiated by the uninitiated.  
This setup includes modern plugins for productivity, coding assistance, and a clean UI.

---

## 📦 Plugins Included

- `lazy.nvim` – uses lazy for plugins
- `alpha` – startup screen
- `colorscheme` – theme setup
- `onedark` – clean dark colorscheme
- `bufferline` – tab-like buffer management
- `lualine` – statusline
- `which-key` – keybinding hints
- `autopairs` – auto-close brackets/quotes
- `comment` – easy commenting
- `conform` – code formatter
- `copilot` – AI-powered coding assistant
- `gitsigns` – git diff signs in the gutter
- `indent-blankline` – indentation guides
- `telescope` – fuzzy finding and search
- `nvim-tree` – file explorer
- `nvim-cmp` – autocompletion
- `todo-comments` – highlight and track TODOs
- `treesitter` – syntax highlighting and parsing
- `mason` – to install lsps, linters, and formatters

---

## 🚀 Installation

```bash
# Backup your existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/yourusername/your-nvim-setup ~/.config/nvim

# Launch nvim
nvim
```

Plugins will install automatically on first run.

## 🛠️ Requirements

- Neovim 0.9+
- git
- A Nerd Font (for icons)
- Node.js (for Copilot)

## 🤝 Contributing

Feel free to fork and tweak this config to your liking.
Pull requests are welcome!

## 📜 License

MIT License

## Special Thanks

- [LazyVim](https://github.com/LazyVim)
- [Josean Martinez](https://github.com/josean-dev)
