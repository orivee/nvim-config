return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            diagnostics = {
                underline = false,
                update_in_insert = false,
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
                clangd = {
                    filetypes = { "c", "cpp", "cc" },
                    cmd = {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--function-arg-placeholders",
                        "--fallback-style=llvm",
                        "--header-insertion=never",
                    },
                    flags = {
                        debounce_text_changes = 500,
                    },
                    mason = false,
                },
            },
        },
    },
    {
        "glepnir/lspsaga.nvim",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({})
        end,
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" },
        },
    },
}
