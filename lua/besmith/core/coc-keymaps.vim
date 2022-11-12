
" remap <cr> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" remap <cr> to select the first completion item and confirm the completion
" when no item has been selected
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" remap <tab> to cycle down the list of completions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" remap <shift - tab> to cycle up the list of completions
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
