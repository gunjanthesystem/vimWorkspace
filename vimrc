"""""""""""""""""Start of VIM native settings"""""""""""""""""
set wrap " Always wrap long lines
set nu " Show line number
set mouse=a " Enable mouse usage
syntax on " Enable spell checking, set spell
" colorscheme gruvbox molokai desert elflord molokai desert ref: https://github.com/rafi/awesome-vim-colorschemes

" disable code folding
" set nofoldenable 
" enable folding
set foldmethod=indent
set foldlevel=99

" ref: https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab

set termguicolors

" allowing front and back arrow keys to move to previous and following lines
set whichwrap=b,s,<,>,[,]

set ignorecase " searching is not case-sensitive
set smartcase  " if pattern contains uppercase, then case-sensitive, only applies to typed search patterns
set hlsearch " highlight all search matches
set incsearch " move the cursor to the matched string, while typing the search pattern
" ensure disabling modeline for security
set modelines=0
set nomodeline
""""""""""""""""""End of VIM native settings""""""""""""""""""

""""""""" START OF VUNDLE"""""""""""""""""""""""""""
" ref https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


""""""""""""""""""Start of Plugins""""""""""""""""""
" ref:https://vimawesome.com
" Plugin 'wincent/command-t'
" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'  
" ref:https://vimawesome.com/plugin/vim-airline
" Plugin 'vim-airline/vim-airline'
" A collection of themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'chrisbra/csv.vim'
" Miscellaneous auto-load Vim scripts
Plugin 'xolox/vim-misc'
" Make it easy to quickly switch color schemes in Vim
Plugin 'xolox/vim-colorscheme-switcher'
" Automated bullet lists
Plugin 'dkarter/bullets.vim'
" For editing LaTeX files
" Plugin 'lervag/vimtex'
" Asynchronous Lint Engine, might slow down performance, load on-demand see: https://www.reddit.com/r/vim/comments/geg7q2/performancekiller_plugins/
" Plugin 'w0rp/ale'
" For TypeScript
" Plugin 'leafgarland/typescript-vim'
" For TypeScript
" Plugin 'quramy/tsuquyomi'
" To display the indentation level with thin vertical lines
Plugin 'yggdroot/indentline'
" Clojure runtime files
" Plugin 'guns/vim-clojure-static' " Not used since already expected to be
" included with Vim
" For Clojure repl inside Vim
" Plugin 'tpope/vim-fireplace'
"  collection of nREPL middleware originally designed to enhance CIDER.
" Plugin 'clojure-emacs/cider-nrepl'
" For level-wise paranethesis colouring
Plugin 'luochen1990/rainbow'
" sets the 'path' for JVM languages to match the class path of your current Java project
Plugin 'tpope/vim-classpath'
" A code-completion engine for vim
" Plugin 'valloric/youcompleteme'
" unlocks all of the power of the Polymer Analyzer in vim
" Plugin 'webdesus/polymer-ide.vim'

" Paredit Mode- Structured Editing of Lisp S-expressions 
" Plugin 'paredit.vim' "replacing by sexp
" Precision Editing for S-expressions
Plugin 'guns/vim-sexp'
" Clojure Interactive Development Environment
" https://liquidz.github.io/vim-iced/
Plugin 'liquidz/vim-iced'
let g:iced_enable_default_key_mappings = v:true

" Retro groove color scheme: easy on the eye and pleasant, looks promising
Plugin 'morhetz/gruvbox'
" Updated version of the original javacomplete plugin for vim.:w
" Plugin 'artur-shaik/vim-javacomplete2' GIVING ERROR
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" Visualize undo-tree
" Plugin 'mbbill/undotree'
" nnoremap <F5> :UndotreeToggle<CR>
" Vim motions on speed
" Plugin 'easymotion/vim-easymotion' "disabling because not using it

" Convert pdf file to plain text, cache it and open it quickly in vim using pdftotext.
" Plugin 'rhysd/open-pdf.vim'

" Preview colors in source code while editing
Plugin 'ap/vim-css-color'

" For Editing Large files, disable some vim option
Plugin 'LargeFile'

" A tree explorer plugin, disabled in favour of builtin netrw
" Plugin 'scrooloose/nerdtree'

" previewing markdown files in a browser without leaving vim. add .md or
" .markdown as extension of the file and press Ctrl+p
" Plugin 'jamshedvesuna/vim-markdown-preview'

" fuzzy file, buffer, mru, tag, etc finder:
Plugin 'ctrlpvim/ctrlp.vim'
" change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = 'c-p'
let g:ctrlp_cmd = 'CtrlP'

" Zoom in/out of windows- Press <c-w>o
" Plugin 'ZoomWin'

" Elm plugin for Vim
" Plugin 'elmcast/elm-vim'

" Plugin 'lervag/vimtex'

" Plugin 'MatlabFilesEdition'
" Plugin 'pangloss/vim-javascript'

" Plugin 'udalov/kotlin-vim'

" code completion engine
" Plugin 'valloric/youcompleteme'

" N-BS Python code folding for Vim ("use z+a to open and close folds")
Plugin 'tmhedberg/simpylfold'

" universal comment plugin
Plugin 'tomtom/tcomment_vim'
" use C-A/C-X to increment dates, times and more
Plugin 'tpope/vim-speeddating'
" To see the docstrings for folded code
let g:SimplyFold_docstring_preview=1

" Format code with one button press (or automatically on save).
" Plugin 'chiel92/vim-autoformat'
" noremap <F7> :Autoformat<CR><CR>

" Plugin 'julialang/julia-vim'

" display tags in a window, ordered by scope
Plugin 'majutsushi/tagbar' 
nmap <F3> :TagbarToggle<CR>

" a git wrapper
Plugin 'tpope/vim-fugitive'
" autocompletion using jedi for Python
" :Plugin 'davidhalter/jedi-vim'
" Provide easy code formatting in Vim by integrating existing code formatters. 
Plugin 'chiel92/vim-autoformat'
" Highlight cols in csv and tsv files and run queries in SQL-like language
Plugin 'mechatroner/rainbow_csv'
" https://github.com/hashivim/vim-terraform
Plugin 'hashivim/vim-terraform'


""""""""""""""""""End of Plugins""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""End of Vundle"""""""""""""""""""""""""""
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ref:https://gist.github.com/gosukiwi/080d1d3f87f861a15c44
" enable matchit plugin which ships with vim and greatly enhances '%'
runtime macros/matchit.vim

" by default, in insert mode backspace won't delete over line breaks, or 
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""" Which filetypes for bullet

"""""""""""Gruvbox settings""""""""""""""
let g:gruvbox_italic=1
let g:gruvbox_bold=1
" let g:gruvbox_hls_cursor="red"
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="medium"
set background=dark
colorscheme gruvbox


"""""""""""Netrw settings""""""""""""""""""""""""""""""
let g:netrw_banner = 0 " disable netrw banner
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
" Hide hidden files by default
" If you don't have a hide list and just want to use gh's: https://vi.stackexchange.com/questions/18650/how-to-make-netrw-start-with-dotfiles-hidden
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex


""""""""""Remapping settings""""""""""""""""""""""""""
"" Renaming variables in scope ref:https://stackoverflow.com/questions/597687/changing-variable-names-in-vim
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
" let g:vimtex_disable_version_warning = 1
" https://stackoverflow.com/questions/5478933/vim-move-around-quickly-inside-of-long-line
nnoremap k gk
nnoremap j gj
" pressing F3 will highlight all occurrences of the current word
" $$ nnoremap <F3> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
" remove the highlighting with Ctrl+L  (https://vi.stackexchange.com/questions/184/how-can-i-clear-word-highlighting-in-the-current-document-e-g-such-as-after-se)
"nnoremap <Leader><space> :noh<cr>
" nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
" nnoremap <silent> <C-L> :nohlsearch<C-R>
" nnoremap <esc><esc> :noh<return>

" Easier split navigation:
" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Insert timestamp https://stackoverflow.com/questions/56052/best-way-to-insert-timestamp-in-vim#58604
nnoremap <Tab><Enter> i<C-R>=strftime("%c")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

""""""""""""""Autocmd settings"""""""""""""""""""""""""""""""
" For java complete"
" autocmd FileType java setlocal omnifunc=javacomplete#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippet from other's .vimrc:
"" The following are examples of different formats supported.
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
