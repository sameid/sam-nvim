return {
	"karb94/neoscroll.nvim",
	opts = {},
	config = function()
		require("neoscroll").setup({
			-- you can keep your other config here
			mappings = {
				-- Add Shift+Up and Shift+Down
				-- "<S-Up>",
				-- "<S-Down>",
			},
		})

		local neoscroll = require("neoscroll")
		local isSilent = true
		local scrollDuration = 50

		-- Add your own smooth scroll bindings
		vim.keymap.set("n", "<S-Up>", function()
			neoscroll.scroll(-vim.wo.scroll, true, scrollDuration)
		end, { silent = isSilent })

		vim.keymap.set("n", "<S-Down>", function()
			neoscroll.scroll(vim.wo.scroll, true, scrollDuration)
		end, { silent = isSilent })
	end,
}
