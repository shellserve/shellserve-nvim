return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function ()
		require("colorizer").setup({
			filetypes = {
				"*",
				css = {rgb_fn = true },
				html = { names = false },
			},
			options =  {
				parsers = {
					custom = {
						{
							name = "go_hex_0x",
							prefixess = { "0x" },
							parse = function (ctx)
								local hex = ctx.line:match("^0x(%x%x%x%x%x%x)", ctx.col)
								if hex then
									return 8, hex:lower()
								end
							end,
						},
					},
				},
			},
		})
	end,
}
