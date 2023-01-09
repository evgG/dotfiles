require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  vim.notify("Problem with mason-lspconfig")
  return
end

mason_lspconfig.setup({
    ensure_installed = { "clangd", -- cpp
     -- "clang_format", "cpp-lint", -- cpp
     --"autoflake", "autopep8", "black", "flake8",
        "jedi_language_server", -- python
     --   "pydocstyle", "pylint", "python_lsp_server", "reorder_python_imports", -- python
        "sumneko_lua", -- lua 
        "rust_analyzer", -- rust 
        "intelephense", -- php
        "dockerls", -- docker
     -- "jq", "jsonlint", -- json
     -- "yamllint", -- yaml
    },
    automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  vim.notify("Problems with lspconfig")
  return
end

mason_lspconfig.setup_handlers({
    -- This is a default handler that will be called for each installed server (also for new servers that are installed during a session)
  function (server_name)
        if server_name == "sumneko_lua" then
            lspconfig[server_name].setup {
                settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } }
                   }
                }
            }
        else
            lspconfig[server_name].setup { }
        end
    end
})
--require('lspconfig').pyright.setup{} -- TODO
