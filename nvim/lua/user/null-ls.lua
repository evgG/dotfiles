local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        -- python 
        null_ls.builtins.formatting.autoflake,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.black.with { extra_args = { "--fast" } },
        null_ls.builtins.diagnostics.flake8,
        -- rust
        null_ls.builtins.formatting.rustfmt,
        -- c, c++
        null_ls.builtins.formatting.clang_format,
        -- dockerfile
        null_ls.builtins.diagnostics.hadolint,
        --null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.completion.spell,
    },
})
