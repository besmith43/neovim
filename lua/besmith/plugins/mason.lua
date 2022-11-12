local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
    return
end

local mason_lspconfig_setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_setup then
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        'ansiblels',
        'bashls',
        'clangd',
        'csharp_ls',
        'cmake',
        'cssls',
        'dockerls',
        'eslint',
        'html',
        'quick_lint_js',
        'tsserver',
        'luau_lsp',
        'phpactor',
        'powershell_es',
        'pyright',
        'rust_analyzer',
        'sqls',
        'taplo'
    },

    automatic_installation = true
})

