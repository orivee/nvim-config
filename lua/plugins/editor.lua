return {
    -- add telescope-fzf-native
    {
        "telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function() require("telescope").load_extension("fzf") end,
        },
    },
    {
        "akinsho/toggleterm.nvim",
        cmd = {
            "ToggleTerm",
            "TermExec",
        },
        config = function()
            require("toggleterm").setup({
                size = function(term)
                    if term.direction == "horizontal" then
                        return 12
                    elseif term.direction == "vertical" then
                        return vim.o.columns * 0.4
                    end
                end,
                hide_numbers = true,
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = "1",
                start_in_insert = true,
                insert_mappings = true,
                terminal_mappings = true,
                persist_size = true,
            })

            vim.api.nvim_create_autocmd({
                "FocusGained",
                "BufEnter",
                "BufWinEnter",
                "WinEnter",
            }, {
                pattern = "term://*",
                callback = function() vim.api.nvim_command("startinsert") end,
            })
        end,
    },
}
