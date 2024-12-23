return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		lazy = false,
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
			indent = { enable = true },
		},
	},
}
