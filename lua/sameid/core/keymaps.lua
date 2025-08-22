--set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>wn", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to previous window" }) -- split window vertically
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to next window" }) -- split window vertically
-- keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Open new buffer" }) -- open new tab
keymap.set("n", "<leader>bd", "<cmd>bw<CR>", { desc = "Close current buffer" }) -- close current tab
keymap.set("n", "<leader>bl", "<cmd>bn<CR>", { desc = "Go to next buffer" }) --  go to next tab
keymap.set("n", "<leader>bh", "<cmd>bp<CR>", { desc = "Go to previous buffer" }) --  go to previous tab

keymap.set("i", "<Tab>", function()
	local ok, _ = pcall(function()
		require("copilot.suggestion").accept()
	end)
	if not ok then
		vim.notify("No Copilot suggestion to accept", vim.log.levels.WARN, {
			title = "Copilot",
		})
	end

	return "<Tab>"
end, { expr = true, silent = true, desc = "Copilot Accept (safe)" })

keymap.set("n", "zz", "o<CR><CR><Esc>kcc", { desc = "Insert 3 lines and go to middle" })
