local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup {
    ensure_installed = { "rust", "c_sharp", "css", "bash", "html", "javascript", "typescript", "python" },

    sync_install = false,

    auto_install = true,
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
