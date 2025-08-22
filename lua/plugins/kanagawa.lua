return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            compile = true,
            transparent = true,
            overrides = function(colors)
                return {
                    ["@markup.link.url.markdown_inline"] = { -- (url)
                        link = "Special",
                    },
                    ["@markup.link.label.markdown_inline"] = { -- [label]
                        link = "WarningMsg",
                    },
                    ["@markup.italic.markdown_inline"] = { -- *italic*
                        link = "Exception",
                    },
                    ["@markup.raw.markdown_inline"] = { -- `code`
                        link = "String",
                    },
                    ["@markup.list.markdown"] = { -- + list
                        link = "Function",
                    },
                    ["@markup.quote.markdown"] = { -- > blockcode
                        link = "Error",
                    },
                    ["@markup.list.checked.markdown"] = { -- - [x] checked list item
                        link = "WarningMsg",
                    },
                }
            end,
        })
        vim.cmd("colorscheme kanagawa")
    end,
    build = function() vim.cmd("KanagawaCompile") end,
}
