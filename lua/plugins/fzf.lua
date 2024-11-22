return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
		lazy = false,
		opts = {
			"fzf-native",
			keymap = {
				fzf = {
					["ctrl-q"] = "select-all+accept",
				},
			},
		},
		keys = {
			{ "<leader>ss", "<cmd>FzfLua builtin<cr>", desc = "Fzf" },
			{ "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Files" },
			{ "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "<leader>so", "<cmd>FzfLua oldfiles<cr>", desc = "Old" },
			{ "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
			{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
			{ "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Word" },
			{ "<leader>s/", "<cmd>FzfLua grep_curbuf<cr>", desc = "Here" },
			{
				"<leader>sc",
				function()
					require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Config",
			},
		},
	},
}
