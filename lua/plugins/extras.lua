return {
	-- "tpope/vim-sleuth",
	-- {
	-- 	"echasnovski/mini.icons",
	-- 	version = false,
	-- 	opts = {},
	-- },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>x", group = "Diagnostic" },
			},
		},
	},
}
