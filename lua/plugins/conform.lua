return {
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "[F]ormat [B]uffer",
        },
    },
    opts = {
        notify_on_error = true,
        format_on_save = function(bufnr)
            -- Disable "format_on_save lsp_fallback" for languages that don't
            -- have a well standardized coding style. You can add additional
            -- languages here or re-enable it for the disabled ones.
            return {
                timeout_ms = 500,
            }
        end,
        formatters_by_ft = {
            lua = { "stylua" },
            go = { "gofmt" },
            -- Conform will run multiple formatters sequentially
            python = { "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            rust = { "rustfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            -- Conform will run the first available formatter
            javascript = { "prettierd" },
            typescript = { "prettierd" },
        },
        formatters = {
            clang_format = {
                prepend_args = {
                    "--style=file:/home/janp/src/common_configuration/resources/.clang-format",
                    "--fallback-style=LLVM",
                },
            },
        },
    },
}
