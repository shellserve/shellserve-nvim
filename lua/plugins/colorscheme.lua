return {
	{
		"rebelot/kanagawa.nvim",
		lazy=false,
		priority=1000,
		opts = {
			compile = false,
			background = { dark = "dragon", light = "lotus" },
		},
		config = function(_, opts)
			require("kanagawa").setup(opts)
			vim.o.background = "dark"
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
