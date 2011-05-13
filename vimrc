" Configurações vim

" Numeração de linhas automática
set number

" Exibe o nome do arquivo na parte superior
set title

" Habilita highlight de código automático
syntax on

set tabstop=4 expandtab shiftwidth=4 softtabstop=4 autoindent

" Code folding
set foldmethod=indent
set foldlevel=99

" Mapeia Ctrl-f para exibir árvore de diretórios/arquivos
map <C-f> :NERDTreeToggle<CR>
