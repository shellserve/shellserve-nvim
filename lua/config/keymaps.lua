vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
vim.keymap.set("n", "<leader>ub", function() vim.o.background = vim.o.background == "dark" and "light" or "dark" end)
