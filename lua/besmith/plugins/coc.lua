vim.cmd([[
let g:coc_global_extensions=[ 'coc-powershell', 'coc-explorer', 'coc-prettier', 'coc-pairs', 'coc-spell-checker', 'coc-pyright', 'coc-rust-analyzer', 'coc-snippets', 'https://github.com/andys8/vscode-jest-snippets', 'coc-css', 'coc-html', 'coc-tsserver', 'coc-sql', 'coc-markdownlint', 'coc-json', '@yaegassy/coc-ansible', 'coc-git' ]

nnoremap <leader>e :CocCommand explorer<cr>

" Use <Tab> and <S-Tab> to navigate the completion list:

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]])
