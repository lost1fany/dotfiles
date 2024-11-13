return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            -- LSP Servers
            "gopls",
            "lua_ls",
            "pyright",
            "bashls",
        }
    }
}
