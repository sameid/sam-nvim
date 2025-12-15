return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		preset = "helix",

		icons = {
			mappings = false,
			groups = false,
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		-- Register the group labels
		-- wk.register({
		-- 	f = { name = "+Windows" },
		-- })
		wk.add({
			{ "<leader>w", group = "windows" },
			{ "<leader>b", group = "buffers" },
			{ "<leader>f", group = "find" },
			{ "<leader>e", group = "explorer" },
			{ "<leader>g", group = "git" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>t", group = "tmux" },
		})
	end,
}
