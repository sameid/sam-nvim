return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true, -- show inline suggestions automatically
			debounce = 75,
			keymap = {
				accept = "<M-l>", -- accept suggestion
				next = "<M-]>", -- next suggestion
				prev = "<M-[>", -- previous suggestion
				dismiss = "<C-]>", -- dismiss
			},
		},
		panel = { enabled = false }, -- optional: inline only
	},
}
