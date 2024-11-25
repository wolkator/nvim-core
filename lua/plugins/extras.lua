return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>s", group = "Search" },
				{ "<leader>x", group = "Diagnostic" },
			},
		},
	},
}
