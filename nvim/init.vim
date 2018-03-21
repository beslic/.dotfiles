" ###  PLUGINS  ###
"
" Specify a directory for plugins (def: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" One Dark colorscheme
"Plug 'joshdick/onedark.vim', { 'do': './install.sh' }
" Nord colorscheme
Plug 'arcticicestudio/nord-vim'
" Vim airline plugin
Plug 'vim-airline/vim-airline'
" Airline themes
"Plug 'vim-airline/vim-airline-themes'
" TMuxline plugin
Plug 'edkolev/tmuxline.vim'
" NERDTree plugin
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" NERDTree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
" Vim Git plugin
Plug 'tpope/vim-fugitive'
" Vim GitGutter plugin
Plug 'airblade/vim-gitgutter'
" Vim JavaScript highlighting plugin
Plug 'pangloss/vim-javascript'
" NodeJS vim
Plug 'moll/vim-node'
" Tern plugin
Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }
" YouCompleteMe plugin
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer --system-libclang' }
" Insert closing parenthesis plugin
Plug 'Raimondi/delimitMate'

" Initialize plugin system
call plug#end()


" ###  SETTINGS  ###
"
" Set tab to 8 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Set support for 256 colors
set t_Co=256
" Colorscheme settings
"if (has("nvim"))
"    let $NVIM_TUI_ENABLE_TRUE_COLORS=1
"endif
if (has("termguicolors"))
    set termguicolors
endif
" Set termcolors to 256
"let g:onedark_termcolors = 256
" Enable syntax highlighting
syntax on
" Set italic comments
let g:nord_italic_comments = 1
" Set colorscheme
colorscheme nord
" Always show statusline
set laststatus=2
" Show numbers
set number
" Set column line at 80 column spaces
set cc=80
" Highlight current cursor line
set cursorline
" Hide default mode indicator
set noshowmode
" Show commands in normal mode
set showcmd
" Set update time to 250 ms
set updatetime=250
" Set folding options
set foldmethod=syntax foldnestmax=5 foldlevel=1 nofoldenable
" Enable Airline powerline fonts
let g:airline_powerline_fonts = 1
" Statusline theme
let g:airline_theme = 'nord'
" Set airline buffers line
let g:airline#extensions#tabline#enabled = 1
" Disable tmuxline theme change
let g:airline#extensions#tmuxline#enabled = 0
" Maximum number of changes for gitgutter
let g:gitgutter_max_signs = 500
" Set CR expansion inside brackets
let delimitMate_expand_cr = 2
" Set Space to expand inside brackets
let delimitMate_expand_space = 1
" Set NERDTree to open files in new tab
let NERDTreeMapOpenInTam = '<ENTER>'
" Autostart NERDTree
au vimenter * NERDTree
" Set tab spaces based on file type
au FileType html setl sw=2 ts=2 sts=0 et
au FileType css setl sw=2 ts=2 sts=0 et
au FileType javascript setl sw=4 ts=4 sts=0 et

" ###  KEYMAPS  ###
"
" Set Ctrl+s to save in normal mode
nmap <C-s> :w<CR>
" Set Ctrl+d to dd in insert mode
imap <C-d> <Esc>ddi
" Set ESC to save file from insert mode
inoremap <Esc> <Esc>:w<CR>
" Set tt to toggle NERDTree in normal mode
nmap <silent> tn :NERDTreeToggle<CR>
" Set Alt+l to switch to the right window
nmap <silent> <A-l> :wincmd l<CR>
" Set Alt+h to switch the left window
nmap <silent> <A-h> :wincmd h<CR>
" Set Alt+j to switch to the lower window
nmap <silent> <A-j> :wincmd j<CR>
" Set Alt+k to switch the upper window
nmap <silent> <A-k> :wincmd k<CR>
" Set Alt+L to move widnow left
nmap <silent> <A-L> :wincmd L<CR>
" Set Alt+H to move window right
nmap <silent> <A-H> :wincmd H<CR>
" Set Alt+J to move window down
nmap <silent> <A-J> :wincmd J<CR>
" Set Alt+K to move window up
nmap <silent> <A-K> :wincmd K<CR>
" Move to the next buffer in list
nnoremap tl :bn<CR>
" Move to the previous buffer in the list
nnoremap th :bp<CR>

