local toggleterm_setup, toggleterm = pcall(require, "toggleterm")
if not toggleterm_setup then
    return
end

toggleterm.setup({
    open_mapping = [[<leader>tt]],
    shade_terminals = false,
    shell = 'bash'
})

