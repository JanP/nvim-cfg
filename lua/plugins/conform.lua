return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            rust = { "rustfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
