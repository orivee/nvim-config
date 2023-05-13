return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        auto_install = true,
        ensure_installed = {
            "bash",
            "c",
            "json",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "python",
            "vim",
            "yaml",
        },
        ignore_install = {
            "tex",
            "latex",
        },
        highlight = {
            enable = true,
            use_languagetree = true,
        },
    },
}
