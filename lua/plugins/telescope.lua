return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		keys = {
			{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc =  "Find Files" },
			{ "<C-p>", "<cmd>Telescope git_files<cr>", desc =  "Find Git Files" },

		},
		opts = {},
	},
}
