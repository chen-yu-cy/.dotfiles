"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customized key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"disable recording
nmap q <Nop>
"map enter with :
nnoremap <Enter> :
"set H to vertical help
cnoreabbrev H vert h
"set H to vertical help
cnoreabbrev H vert h
nnoremap <tab> %
vnoremap <tab> %
noremap - $
"automaticially open my_configs file
"nnoremap <leader>ev <C-W><C-V><C-L>:e $HOME/.vim_runtime/my_configs.vim<cr>
nnoremap <leader>ev :e $HOME/.vim_runtime/my_configs.vim<cr>
"auto load my_configs.vim when save
autocmd! bufwritepost ~/.vim_runtime/my_configs.vim source ~/.vimrc
"map last edited buffer
nmap <leader><tab> :b#<cr>
" <leader>+" surround a word with parethesis
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
"awesome git mappings
noremap <leader>st :Gstatus<cr>
noremap <leader>ci :Gcommit<cr>

"open lazygit
map <leader>g :!lazygit<cr>
"some ideas
"f key case insensive settings

noremap <leader>wq :wq<cr>
noremap <leader>q :q<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal Mode Navigations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. <c-t>
nnoremap <leader>/ <c-]>
"map U to redo
nnoremap U <c-r>

"Disable join lines , map it to move down visually
nmap J <c-d>
nmap K <C-U>
"Disable join lines , map it to move down visually
nmap <s-j> <c-d>
nmap <s-k> <c-u>
nmap <leader>j <c-d>
nmap <leader>k <c-u>

"Disable arror key for training Vim key bindings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"remap jump in and jump out: ctrl-t and ctrl-]
nnoremap <c-a> <c-t>
nnoremap <c-space> <c-]>
nnoremap <leader>. <c-t>
nnoremap <leader>/ <c-]>
nnoremap <leader>[ <c-t>
nnoremap <leader>] <c-]>

"jump in and out
nnoremap <leader>' <c-I>
nnoremap <leader>; <c-O>

nmap cp :let @" = expand("%:p")<cr>

"Using shift and a direction to change tabs
noremap <S-l> gt
noremap <S-h> gT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Personal Extra Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set color scheme
"set background=dark
let g:dracula_italic = 0
colorscheme dracula

" enable mouse scroll
set mouse=a

"change default behaviour of tab complete, act like as Bash
set wildmode=longest,list,full
set wildmenu

" Make the nerdtree change to the directory when opens a bookmark
let NERDTreeChDirMode = 2

" ingore the go_version update settings
let g:go_version_warning = 0

"disable automatic syntasic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"disable fold
set nofoldenable

"remove the status line at bottom
set laststatus=2
"status line (top) settings
set stal=1

"show line number
set relativenumber
set number

"disable auto insert a comment leader after hitting 'o'
autocmd BufNewFile,BufRead * setlocal formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <c-f> <c-r>=expand("%:p")<cr>
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
inoremap qq <ESC>
inoremap jk <ESC>
inoremap jj <ESC>
inoremap oo <c-o>
inoremap ,, <c-o>
" In insert or command mode, move normally by using Ctrl
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
let g:AutoPairsMapCh = 0 " disable imap <c-h> <BS> in autopairs.plugin
inoremap <C-h> <Left>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins option
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTREE Related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let NERDTREE show hidden files
let NERDTreeShowHidden=1
" set NERDTREE up directory with 'h'
autocmd FileType nerdtree nmap<buffer> h u
autocmd FileType nerdtree nmap<buffer> l o
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion highlight colors
hi link EasyMotionTarget Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
hi link EasyMotionShade Comment


