-- return {
-- 	"folke/which-key.nvim",
-- 	event = "VeryLazy",
-- 	init = function()
-- 		vim.o.timeout = true
-- 		vim.o.timeoutlen = 500
-- 	end,
-- 	opts = {
-- 		-- your configuration comes here
-- 		preset = "helix",
-- 		-- or leave it empty to use the default settings
-- 		-- refer to the configuration section below
-- 	},
-- }
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		preset = "helix",
		-- `opts` goes directly into require("which-key").setup()
		-- plugins = {
		-- 	spelling = true, -- example plugin setting
		-- },
		-- defaults = {
		-- 	-- your keymap groups
		-- 	-- { "<leader>w", group = "+windows" },
		-- 	-- { "<leader>b", group = "+buffers" },
		-- 	-- { "<leader>f", group = "+find" },
		-- 	-- { "<leader>e", group = "+explorer" },
		-- 	-- { "<leader>g", group = "+git" },
		--
		-- 	["<leader>w"] = { name = "+windows" },
		-- 	["<leader>b"] = { name = "+buffers" },
		-- 	["<leader>f"] = { name = "+find" },
		-- 	["<leader>e"] = { name = "+explorer" },
		-- 	["<leader>g"] = { name = "+git" },
		-- },
	},
	-- config = function(_, opts)
	-- 	local wk = require("which-key")
	-- 	wk.setup(opts)
	-- 	-- Register the group labels
	-- 	wk.register(opts.defaults)
	-- end,
}
