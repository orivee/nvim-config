return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            diagnostics = {
                underline = false,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    prefix = "●",
                },
                severity_sort = true,
            },
            servers = {
                pylsp = {
                    plugins = {
                        pylint = { enabled = true, executable = "pylint" },
                        pyflakes = { enabled = false },
                        pycodestyle = { enabled = false },
                        jedi_completion = { fuzzy = true },
                        pyls_isort = { enabled = true },
                        pylsp_mypy = { enabled = true },
                    },
                    },
                clangd = {},
            },
        },
    },

    -- load luasnips + cmp related in insert mode only
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            {
                -- snippet plugin
                "L3MON4D3/LuaSnip",
                dependencies = "rafamadriz/friendly-snippets",
                config = function()
                    local options = {
                        history = true,
                        updateevents = "TextChanged,TextChangedI",
                    }

                    require("luasnip").config.set_config(options)

                    require("luasnip.loaders.from_vscode").lazy_load({
                        paths = vim.g.luasnippets_path or "",
                    })
                    require("luasnip.loaders.from_vscode").lazy_load()

                    vim.api.nvim_create_autocmd("InsertLeave", {
                        callback = function()
                            if require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()] and
                                not require("luasnip").session.jump_active then
                                require("luasnip").unlink_current()
                            end
                        end,
                    })
                end,
            },

            -- cmp sources plugins
            {
                "saadparwaiz1/cmp_luasnip",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
            },
        },
    },
}
