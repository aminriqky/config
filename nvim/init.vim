call plug#begin("~/.vim/plugged")
  " Plugin Section
Plug 'mhartington/oceanic-next', { 'as': 'OceanicNext' }
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'bluz71/vim-moonfly-statusline'
call plug#end()

"Config Section
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme OceanicNext

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:airline_theme='oceanicnext'

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

hi tsxTagName guifg=#FC929E
hi tsxComponentName guifg=#79B6F2
hi tsxCloseComponentName guifg=#79B6F2

hi tsxCloseString guifg=#88C6BE
hi tsxCloseTag guifg=#88C6BE
hi tsxCloseTagName guifg=#88C6BE
hi tsxEqual guifg=#88C6BE

hi tsxAttrib guifg=#C5A5C5 cterm=italic
hi tsxAttributeBraces guifg=#FFFFFF
hi ReactState guifg=#C5A5C5
hi ReactProps guifg=#8DC891
hi ReactLifeCycleMethods guifg=#79B6F2
hi tsxTypeBraces guifg=#88C6BE
hi tsxTypes guifg=#79B6F2
hi Events ctermfg=204 guifg=#79B6F2

highlight Normal guibg=none
highlight NonText guibg=none
highlight LineNr guibg=none guifg=gray
hi statusline guibg=none guifg=darkgray gui=none

let g:moonflyWithNerdIcon = 1

set number
hi tsxEqual guifg=#88C6BE

hi tsxAttrib guifg=#C5A5C5 cterm=italic
hi tsxAttributeBraces guifg=#FFFFFF
hi ReactState guifg=#C5A5C5
hi ReactProps guifg=#8DC891
hi ReactLifeCycleMethods guifg=#79B6F2
hi tsxTypeBraces guifg=#88C6BE
hi tsxTypes guifg=#79B6F2
hi Events ctermfg=204 guifg=#79B6F2

highlight Normal guibg=none
highlight NonText guibg=none
highlight LineNr guibg=none guifg=gray
hi statusline guibg=none guifg=darkgray gui=none

let g:moonflyWithNerdIcon = 1

set number
