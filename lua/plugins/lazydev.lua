return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- luv types, loaded only when `vim.uv` appears in the buffer
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
	keymap = {
		preset = "default",
		["<Tab>"] = {"select_and_accept", "fallback" },
	},
	sources = {
		default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        	providers = {
			lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				score_offset = 100,
			},
		},
	},
    },
    version = "1.*",
    branch = "v1",
  },
}
