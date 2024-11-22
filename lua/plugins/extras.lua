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
	},
	{
		"echasnovski/mini.statusline",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.icons",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.move",
		version = false,
		opts = {
			mappings = {
				left = "H",
				right = "L",
				down = "J",
				up = "K",
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>s", group = "Search" },
				{ "<leader>l", group = "Load session" },
				{ "<leader>x", group = "Diagnostic" },
			},
		},
	},
}
