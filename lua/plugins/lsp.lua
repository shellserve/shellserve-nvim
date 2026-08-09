return{
	{
		"mason-org/mason.nvim",
    		cmd = "Mason",
    		build = ":MasonUpdate",
    		opts = {
			ui = {
				border = "rounded",
				icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" },
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
	    	event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"mason-org/mason.nvim",
		      	"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"gopls",
				"pyright",
				"ts_ls",
		      	},
		      	automatic_enable = {
				exclude = { "rust_analyzer" },
		      	},
		},
	},
}
