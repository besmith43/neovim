vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("n", "<leader>ch", ":nohl<CR>") -- clear highlights

-- this is by default reopening the same file
keymap.set("n", "<leader>sv", "<C-w>v | :Telescope find_files<CR>") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s | :Telescope find_files<CR>") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>")  -- close current split window

-- will open a blank file by default
keymap.set("n", "<leader>te", ":tabnew | :Ex<CR>") -- open new tab to file explorer
keymap.set("n", "<leader>tn", ":tabnew | :Telescope find_files<CR>") -- open new tab with fuzzy find
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tj", ":tabp<CR>") -- go to the next tab
keymap.set("n", "<leader>tk", ":tabn<CR>") -- go to the previous tab
keymap.set("n", "<leader>th", ":tabfirst<CR>") -- go to the first tab
keymap.set("n", "<leader>tl", ":tablast<CR>") -- go to the last tab

keymap.set("n", "<leader>pv", ":Ex<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- coc
-- this has to be the absolute path
-- using the relative path causes an error
-- so it'll have to be changed on non-windows machines
vim.cmd [[
" remap <cr> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" remap <cr> to select the first completion item and confirm the completion
" when no item has been selected
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" remap <tab> to cycle down the list of completions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" remap <shift - tab> to cycle up the list of completions
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]]

keymap.set("n", "<leader>cd", "<cmd>CocDiagnostics<cr>")

keymap.set("n", "<leader>gd", "<Plug>(coc-definition)", {silent = true})
keymap.set("n", "<leader>gy", "<Plug>(coc-type-definition)", {silent = true})
keymap.set("n", "<leader>gi", "<Plug>(coc-implementation)", {silent = true})
keymap.set("n", "<leader>gr", "<Plug>(coc-references)", {silent = true})

