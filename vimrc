
call plug#begin('~/.vim/plugged')

" Gerenciador de plugins
"Plug 'dense-analysis/ale'               " Linter e formatter
Plug 'scrooloose/nerdtree'              " Navegador de arquivos
Plug 'sheerun/vim-polyglot'             " Suporte a múltiplas linguagens
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
call plug#end()

" Cores e aparência
set background=dark

highlight Normal       guibg=#000000 guifg=#B0BEC5
highlight Comment      guifg=#4A6572
highlight Constant     guifg=#81A1C1
highlight Identifier   guifg=#88C0D0
highlight Statement    guifg=#5E81AC
highlight Visual       guibg=#2E3440
highlight CursorLine   guibg=#1C2026
highlight LineNr       guifg=#3B4252
highlight MatchParen   guibg=#2E3440 guifg=#81A1C1

" Airline personalizado
let g:airline#themes#custom_theme = {
      \ 'airline_a': ['#1C2026', '#88C0D0'],
      \ 'airline_b': ['#1C2026', '#4A6572'],
      \ 'airline_c': ['#1C2026', '#B0BEC5']
      \ }
let g:airline_theme = 'custom_theme'

" Melhorias de interface
set number
"set cursorline
set splitbelow
set splitright
set scrolloff=8
set sidescrolloff=8
set signcolumn=yes

" Configurações do CoC
let g:coc_global_extensions = ['coc-clangd']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> gi <Plug>(coc-implementation)
" Configuração do NERDTree
nmap <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Configurações do CoC
let g:coc_global_extensions = ['coc-clangd']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

" Atalhos adicionais
nnoremap <C-p> :Files<CR>               " Abre o menu de arquivos
nnoremap <C-t> :Tags<CR>                " Pesquisa de tags
nnoremap <C-f> :Rg<CR>                  " Busca por texto com ripgrep
" ========== Atalhos de compilação ==========
" Compilar C e executar
nnoremap <F5> :w<CR>:!gcc % -o %:r && ./%:r<CR>
" Alternar entre splits
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Salvar com Ctrl+S
noremap <C-s> :w<CR>


" Linting e formatação automáticos
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
