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
                clangd = {},
            },
        },
    },
}
