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
				c = { "clang-format" },
				cpp = { "clang-format" },
				arduino = { "clang-format" },
			},
			format_on_save = {
				lsp_fallback = false,
				async = false,
				timeout_ms = 1000,
			},
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
							".git",
						}

						-- Create utility function to get the project root directory
						local getProjectRoot = util.root_file(projectRootFiles)

						-- Get the project root directory
						local projectRoot = getProjectRoot(self, ctx)

						-- If the project root is found and the prettier config files are found in the project root, then use the config from the project root
						if doesProjectHavePrettierConfig(projectRoot, prettierFiles) then
							vim.notify(
								"Prettier config found in the project root, using project prettier config",
								vim.log.levels.WARN
							)
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
				clang_format = {
					args = {

						"--style",
						"{BasedOnStyle: llvm, UseTab: Always, IndentWidth: 4, TabWidth: 4}",
					},
				},
			},
		})
	end,
}
--
