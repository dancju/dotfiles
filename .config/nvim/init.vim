call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
call plug#end()

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd FileType * set ts=2 | set sw=2 | set expandtab
autocmd FileType make setlocal noexpandtab
colorscheme onehalfdark
let g:NERDSpaceDelims = 1
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
let g:lightline = {
  \ 'colorscheme': 'onehalfdark',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
\ }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '☡'
let g:syntastic_style_warning_symbol = '☡'
let g:syntastic_warning_symbol = '✗'
set background=dark
set clipboard+=unnamedplus
set colorcolumn=80
set inccommand=nosplit
set laststatus=2
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set mouse=a
set number
set relativenumber
set termguicolors
