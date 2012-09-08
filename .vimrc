" Configurações vim

call pathogen#infect()

" Numeração de linhas automática
set number

" Exibe o nome do arquivo na parte superior
set title

" Habilita highlight de código automático
syntax on

set tabstop=4 expandtab shiftwidth=4 softtabstop=4 autoindent

" Open a new Tab
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Code folding
set foldmethod=indent
set foldlevel=99

set encoding=utf-8

" Mapeia Ctrl-f para exibir árvore de diretórios/arquivos
map <C-f> :NERDTreeToggle<CR>

" Bubbling text - http://vimcasts.org/episodes/bubbling-text/
" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
