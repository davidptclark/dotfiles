
"===============
"Dotfile for Vim
"===============

"=========================================================================
"Plugin Manager
"=========================================================================
"Installs vim-plugged plugin manager if it isn't present on local machine
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Initialise plugin manager
	call plug#begin('~/.vim/plugged')

"=========================================================================
"Plugin List
"========================================================================
" Plugin to allow alignment for any chosen delimiter
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"Distraction-free writing environment
Plug 'junegunn/goyo.vim'

"Allow commenting in blocks
Plug 'tpope/vim-commentary'

"Allows for power/airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Nerd tree for directory navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>

"Git gutter for Vim
Plug 'airblade/vim-gitgutter'

"Pandoc complication within Vim
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

"Table creation for Pandoc/Markdown
Plug 'dhruvasagar/vim-table-mode'

"Neosnippet plugin
Plug 'Shougo/neosnippet-snippets'

"End call to plugin manager
call plug#end()

"=========================================================================
"Custom Mapping and Appearance Perferences
"========================================================================
" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
"Set relative line numbers on but show current line number simultaniously
	set number
	set relativenumber
" Open compiled PDF file
"map <leader>p :!opout <c-r>%<CR><CR>
" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=en_gb<CR>
" Use deoplete.
let g:deoplete#enable_at_startup = 1
