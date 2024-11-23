return {
	"tpope/vim-sleuth",
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { "echasnovski/mini.icons" },
		keys = {
			{ "<leader>o", "<cmd>Oil<cr>", desc = "Oil" },
		},
		lazy = false,
	},
	{
		"echasnovski/mini.icons",
		version = false,
		opts = {},
	},
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
