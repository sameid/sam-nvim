local function doesProjectHavePrettierConfig(projectRoot, prettierFiles)
	for _, configFile in ipairs(prettierFiles) do
		local configFilePath = projectRoot .. "/" .. configFile
		if vim.fn.filereadable(configFilePath) == 1 then
			return true
		end
	end
	return false
end

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = false,
				async = false,
				timeout_ms = 1000,
			},
			-- formatters = {
			-- 	prettier = {
			-- 		command = vim.fn.expand("./node_modules/.bin/prettier"), -- local project bin
			-- 		args = {
			-- 			"--stdin-filepath",
			-- 			"$FILENAME",
			-- 		},
			-- 		cwd = require("conform.util").root_file({
			-- 			".prettierrc",
			-- 			".prettierrc.cjs",
			-- 			"package.json",
			-- 			".git",
			-- 		}),
			-- 	},
			-- },
			formatters = {
				prettier = {
					args = function(self, ctx)
						-- require the util module to access utility functions
						local util = require("conform.util")

						-- Define the list of Prettier config files to check for
						local prettierFiles = {
							".prettierrc",
							".prettierrc.json",
							".prettierrc.yml",
							".prettierrc.yaml",
							".prettierrc.json5",
							".prettierrc.js",
							".prettierrc.cjs",
							".prettierrc.mjs",
							".prettierrc.toml",
							"prettier.config.js",
							"prettier.config.cjs",
							"prettier.config.mjs",
						}

						-- Define the project root files to check for
						local projectRootFiles = {
							"package.json",
						}

						-- Create utility function to get the project root directory
						local getProjectRoot = util.root_file(projectRootFiles)

						-- Get the project root directory
						local projectRoot = getProjectRoot(self, ctx)

						-- If the project root is found and the prettier config files are found in the project root, then use the config from the project root
						if doesProjectHavePrettierConfig(projectRoot, prettierFiles) then
							vim.notify("No Prettier config found in the project root", vim.log.levels.WARN)
							return { "--stdin-filepath", "$FILENAME" }
						end

						-- If no Prettier config files are found, use the default args
						return {
							"--stdin-filepath",
							"$FILENAME",
							"--use-tabs",
							"--print-width",
							"160",
						}
					end,
				},
			},
		})

		-- vim.keymap.set({ "n", "v" }, "<leader>mp", function()
		-- 	conform.format({
		-- 		lsp_fallback = true,
		-- 		async = false,
		-- 		timeout_ms = 1000,
		-- 	})
		-- end, { desc = "Format file or range (in visual mode)" })
	end,
}
--
