return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			hide_root_node = true,
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = {
						".git",
						".DS_Store",
					},
				},
			},
		})

		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

		if vim.fn.argc() == 0 then
			local function start_up_func()
                vim.cmd("let wid = win_getid()")
				vim.cmd("Neotree reveal")
                vim.cmd("call win_gotoid(wid)")
			end
			vim.schedule(start_up_func)
		else
			vim.cmd("autocmd VimEnter * Neotree")
		end
		vim.cmd("autocmd VimEnter * ++nested setlocal norelativenumber nonumber")
		vim.cmd("autocmd FileType neo-tree setlocal norelativenumber nonumber")
	end,
}
