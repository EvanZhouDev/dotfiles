return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	config = function()
		require("onedarkpro").setup({
			options = {
				cursorline = true,
			},
		})
		vim.cmd("colorscheme onedark")
	end,
}
