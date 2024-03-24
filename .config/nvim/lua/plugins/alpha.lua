return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        if vim.fn.argc() == 0 then
            local alpha = require("alpha")
            local theta = require("alpha.themes.theta")
            local themeconfig = theta.config
            local dashboard = require("alpha.themes.dashboard")

            themeconfig.layout[2].val = {
                "                    'c.",
                "                 ,xNMM.",
                "               .OMMMMo",
                "               OMMM0,",
                "     .;loddo:' loolloddol;.",
                "   cKMMMMMMMMMMNWMMMMMMMMMM0:",
                " .KMMMMMMMMMMMMMMMMMMMMMMMWd.",
                " XMMMMMMMMMMMMMMMMMMMMMMMX.",
                ";MMMMMMMMMMMMMMMMMMMMMMMM:",
                ":MMMMMMMMMMMMMMMMMMMMMMMM:",
                ".MMMMMMMMMMMMMMMMMMMMMMMMX.",
                " kMMMMMMMMMMMMMMMMMMMMMMMMWd.",
                " .XMMMMMMMMMMMMMMMMMMMMMMMMMMk",
                "  .XMMMMMMMMMMMMMMMMMMMMMMMMK.",
                "    kMMMMMMMMMMMMMMMMMMMMMMd",
                "     ;KMMMMMMMWXXWMMMMMMMk.",
                "       .cooc,.    .,coo:.",
            }

            themeconfig.layout[4].val = function()
                return {
                    -- { type = "text", val = "Recent Files", opts = { hl = "SpecialComment", position = "center" } },
                    -- { type = "padding", val = 1 },
                    theta.mru(0, vim.fn.getcwd(), 5),
                }
            end

            themeconfig.layout[6].val = {
                -- { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
                -- { type = "padding", val = 1 },
                dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
                dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
                dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
            }

            vim.api.nvim_set_hl(0, "apple_logo_green", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "apple_logo_yellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "apple_logo_orange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "apple_logo_red", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "apple_logo_purple", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "apple_logo_blue", { fg = "#61AFEE" })

            local hl = {
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_green", 0, 100 } },
                { { "apple_logo_yellow", 0, 100 } },
                { { "apple_logo_yellow", 0, 100 } },
                { { "apple_logo_orange", 0, 100 } },
                { { "apple_logo_orange", 0, 100 } },
                { { "apple_logo_red", 0, 100 } },
                { { "apple_logo_red", 0, 100 } },
                { { "apple_logo_purple", 0, 100 } },
                { { "apple_logo_purple", 0, 100 } },
                { { "apple_logo_blue", 0, 100 } },
                { { "apple_logo_blue", 0, 100 } },
                { { "apple_logo_blue", 0, 100 } },
            }

            themeconfig.layout[2].opts.hl = hl
            table.insert(themeconfig.layout, { type = "padding", val = 1 })
            table.insert(themeconfig.layout, {
                type = "text",
                val = require("alpha.fortune")(),
                opts = {
                    position = "center",
                    hl = "Number"
                },
            })
            alpha.setup(themeconfig)
        end
    end,
}
