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
			{ "<leader> ", "<cmd>FzfLua builtin<cr>", desc = "Fzf" },
			{ "<leader>f", "<cmd>FzfLua files<cr>", desc = "Files" },
			{ "<leader>b", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "<leader>r", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
			{ "<leader>h", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
			{ "<leader>g", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
			{ "<leader>/", "<cmd>FzfLua grep_curbuf<cr>", desc = "Search" },
			{
				"<leader>c",
				function()
					require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Config",
			},
		},
	},
}
