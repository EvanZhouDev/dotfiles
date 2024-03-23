return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.opt.termguicolors = true
        _G.__cached_neo_tree_selector = nil
        _G.__get_selector = function()
            return _G.__cached_neo_tree_selector
        end
        require("bufferline").setup({
            highlights = {
                offset_separator = {
                    fg = "#5C6370",
                    bg = "#282C34",
                },
                fill = {
                    bg = "#1F2126",
                },
            },
            options = {
                seperator = "|",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text  = vim.fn.fnamemodify(vim.fn.getcwd(), ":~:."),
                        highlight = "Label",
                        text_align = "left",
                        separator = true,
                    },
                    {
                        filetype = "alpha",
                        text  = "Alpha Start Page",
                    },
                },
            },
        })
    end,
}
