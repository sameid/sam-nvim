--set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window keymaps
keymap.set("n", "<leader>wn", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to previous window" }) -- split window vertically
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to next window" }) -- split window vertically
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to bottom window" }) -- split window vertically
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to top window" }) -- split window vertically
-- keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>wq", "<cmd>copen<CR>", { desc = "Go to quickfix window" }) -- close current split window

-- buffer keymaps
keymap.set("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Open new buffer" }) -- open new tab
keymap.set("n", "<leader>bd", "<cmd>bw<CR>", { desc = "Close current buffer" }) -- close current tab
keymap.set("n", "<leader>bl", "<cmd>bn<CR>", { desc = "Go to left buffer" }) --  go to next tab
keymap.set("n", "<leader>bh", "<cmd>bp<CR>", { desc = "Go to right buffer" }) --  go to previous tab
keymap.set("n", "<leader>bb", "<C-o>", { desc = "Toggle back to previous buffer" }) --  go to previous tab
keymap.set("n", "<leader>br", "<cmd>e!<CR>", { desc = "Refresh current buffer" }) --  go to previous tab

-- register keymaps
-- keymap.set("n", "<leader>r", '"', { desc = "Toggle back to previous buffer" }) --  go to previous tab

-- Terminal Keymaps (<C-/> maps to <C-_> in normal mode)
keymap.set("n", "<c-_>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) --  go to previous tab
keymap.set("n", "<c-/>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) --  go to previous tab
keymap.set("t", "<C-_>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) --  go to previous tab
keymap.set("t", "<C-/>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) --  go to previous tab

-- Copilot Keymaps
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

-- Insert 3 lines and go to middle (zz))
keymap.set("n", "zz", "o<CR><Esc>ko", { desc = "Insert 3 lines and go to middle" })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})

function closeAllNonEssentialBuffers()
	local currentBuffer = vim.api.nvim_get_current_buf()
	local allBuffers = vim.api.nvim_list_bufs()

	for _, buffer in ipairs(allBuffers) do
		if not vim.api.nvim_buf_is_loaded(buffer) then
			goto continue
		end

		local bufferName = vim.api.nvim_buf_get_name(buffer)
		local bufferType = vim.api.nvim_buf_get_option(buffer, "buftype")

		local isCurrentBuffer = buffer == currentBuffer
		local isTerminalBuffer = bufferType == "terminal"
		local isNvimTreeBuffer = string.match(bufferName, "NvimTree_")

		if isCurrentBuffer or isTerminalBuffer or isNvimTreeBuffer then
			goto continue
		end

		-- Skip current buffer, terminal buffers, and NvimTree
		pcall(vim.cmd, "bd! " .. buffer)

		::continue::
	end
end

-- Keybinding keybinding for closing all non-essential buffers and not closing the current one as well
keymap.set("n", "<leader>bc", closeAllNonEssentialBuffers, { desc = "Close non-essential buffers" })
keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true })
