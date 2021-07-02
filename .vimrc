set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" Plugins

call plug#begin('~/.vim/plugged')

Plug 'dikiaap/minimalist'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'ap/vim-css-color'
"Plug 'pangloss/vim-javascript'
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']

call plug#end()

"colorscheme darcula
colorscheme minimalist
:let g:NERDTreeWinSize=30

"mappings
set number
let mapleader = ","
map <leader>nn :NERDTreeToggle<cr>
map <leader>+ :vertical resize +5<CR>
map <leader>- :vertical resize -5<CR>

"Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
 "Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)"
" TextEdit might fail if hidden is not set.
set hidden
"
" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

