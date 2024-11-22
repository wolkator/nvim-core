-- Based on lsp-zero.netlify.app/docs
return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				preselect = "item",
				completion = {
					completeopt = "menu,menuone,noinsert",
				},
				sources = {
					{ name = "buffer" },
					{ name = "nvim_lsp" },
					{ name = "path" },
				},
				mapping = cmp.mapping.preset.insert({
					["<c-p>"] = cmp.mapping.select_prev_item(),
					["<c-n>"] = cmp.mapping.select_next_item(),
					["<cr>"] = cmp.mapping.confirm({ select = true }),
					["<c-space>"] = cmp.mapping.complete(),
					["<c-u>"] = cmp.mapping.scroll_docs(-4),
					["<c-d>"] = cmp.mapping.scroll_docs(4),
				}),
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
			})
		end,
	},
}
