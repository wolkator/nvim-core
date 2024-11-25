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
			{ "<leader>f", "<cmd>FzfLua builtin<cr>", desc = "Fzf builtin" },
			{ "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Files" },
			{ "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "<leader>so", "<cmd>FzfLua oldfiles<cr>", desc = "Old files" },
			{ "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
			{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
			{ "<leader>s/", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
			{
				"<leader>sn",
				function()
					require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Neovim config",
			},
		},
	},
}
