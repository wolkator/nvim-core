return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"lua",
				"markdown",
				"python",
				"regex",
				"vim",
				"vimdoc",
				"query",
				"xml",
				"yaml",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			indent = { enable = true },
			textobjects = {
				select = {
					enable = true,
					-- Automatically jump forward to textobj, similar to targets.vim
					lookahead = true,
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["af"] = { query = "@function.outer", desc = "Around function" },
						["if"] = { query = "@function.inner", desc = "Inner function" },
						["ac"] = { query = "@class.outer", desc = "Around class" },
						["ic"] = { query = "@class.inner", desc = "Inner class" },
						["aa"] = { query = "@parameter.outer", desc = "Around parameter" },
						["ia"] = { query = "@parameter.inner", desc = "Inner parameter" },
					},
				},
			},
		},
	},
}
