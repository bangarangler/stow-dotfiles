" VSCODE NVIM YUCK -> better but still not vim
if exists('g:vscode')
nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>
xnoremap <silent> <C-P> :<C-u>call <SID>openVSCodeCommandsInVisualMode()<CR>
call plug#begin()
Plug 'ChristianChiarulli/vscode-easymotion'
Plug 'machakann/vim-highlightedyank'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
call plug#end()
else
" vim-plug ---
" call plug#begin('~/.config/nvim/plugged')
call plug#begin()
" Viewer and Finder for LSP symbols and tags
Plug 'liuchengxu/vista.vim'

" Git Plugins ---
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-merginal'
Plug 'jreybert/vimagit'
Plug 'stsewd/fzf-checkout.vim'

" FZF ---
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" File Explorer ---
Plug 'scrooloose/nerdtree'

" Visual Improvments ---
Plug 'ryanoasis/vim-devicons'

" Rainbow Parentheses ---
Plug 'luochen1990/rainbow'

" Commenting ---
Plug 'tomtom/tcomment_vim'

" Color Selection ---
Plug 'kabbamine/vcoolor.vim'

" WhiteSpace Plugins ---
Plug 'ntpeters/vim-better-whitespace'

" Motion Plugins ---
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'kshenoy/vim-signature'

" Emmit ---
Plug 'mattn/emmet-vim'

" Colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'davidcelis/vim-ariake-dark'
Plug 'joshdick/onedark.vim'
Plug 'jnurmine/zenburn'
Plug 'jonathanfilip/vim-lucius'

" COC ---
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim Floaterm
Plug 'voldikss/vim-floaterm'

" Vim Which Key
Plug 'liuchengxu/vim-which-key'

" Snippets ---
"Plug 'sirver/ultisnips'

" Handle Surrounding things
Plug 'tpope/vim-surround'

" Indentation guide lines ---
Plug 'nathanaelkane/vim-indent-guides'

" Not needed for Nvim
" Extend % for matching things
" Plug 'vim-scripts/matchit.zip'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Indentation adjusted to destination context
Plug 'sickill/vim-pasta'

" Ack
Plug 'mileszs/ack.vim'

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Heuristically set buffer options
Plug 'tpope/vim-sleuth'

" Highlight enclsosing html/xml tags
Plug 'valloric/matchtagalways'

" Vim's native file completion but relative to the current file
Plug 'pablopunk/dynamic-file-completion.vim'

" ranger for nvim
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'kevinhwang91/rnvimr'

"ranger for vim
" Plug 'francoiscabrol/ranger.vim'

" Substitute, Search, abbriveate multiple variants of a word
Plug 'tpope/vim-abolish/'

" Syntax Highlighting ---
Plug 'sheerun/vim-polyglot'

" Svelte highlighting ---
Plug 'evanleck/vim-svelte'
let g:svelte_preprocessors = ['typescript']

" CSS show colors ---
Plug 'ap/vim-css-color'

" GraphQL Highlighting ---
Plug 'jparise/vim-graphql'

" Vim-Peekaboo
Plug 'junegunn/vim-peekaboo'

" Python ---
Plug 'tmhedberg/simpylfold'
Plug 'vim-scripts/indentpython.vim'
Plug 'psf/black', { 'branch': 'stable' }
" Plug 'nvie/vim-flake8'
" Plug 'davidhalter/jedi-vim'

" Docker ---
Plug 'ekalinin/dockerfile.vim'

" Tmux Navigation
Plug 'christoomey/vim-tmux-navigator'

" Startify ---
Plug 'mhinz/vim-startify'

" Visual Improvments ---
Plug 'ryanoasis/vim-devicons'

" SQL ---
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" Vimspector
" Plug 'puremourning/vimspector', {'do': './install_gadget.py'}
Plug 'puremourning/vimspector'

" Testing / No longer used"
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'vim-scripts/Conque-GDB'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-commentary'
"Plug 'scrooloose/syntastic'
"Plug 'ervandew/supertab'
"Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --ts-completer' }
"Plug 'pangloss/vim-javascript'
"Plug 'isruslan/vim-es6'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'w0rp/ale'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'honza/vim-snippets'
"Plug 'epilande/vim-es2015-snippets'
"Plug 'epilande/vim-react-snippets'
"Plug 'othree/html5.vim', { 'for': 'html'  }
"Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
"Plug 'moll/vim-node', { 'for': 'javascript' }
"Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] }
"let g:jsx_ext_required = 0
"Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
"Plug 'groenewege/vim-less', { 'for': 'less' }
"Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
"Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
" Plug 'gko/vim-coloresque'
"Plug 'stephenway/postcss.vim', { 'for': 'css' }
"Plug 'elzr/vim-json', { 'for': 'json'  }
"let g:vim_json_syntax_conceal = 0
"Plug 'joonty/vdebug'
"let g:mta_filetypes = {
      "\ 'javascript.jsx' : 1,
      "\}
"Plug 'styled-components/vim-styled-components'
call plug#end()

" set leader key to \
let mapleader="\\"

" SQL DEV
source /home/jonathan/dotfiles/neovim/.config/nvim/hidden.vim
map <leader><leader>db :DBUI<CR>

let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-highlight',
      \ 'coc-emmet',
      \ 'coc-go',
      \ 'coc-sql',
      \ 'coc-db',
      \ 'coc-snippets',
      \ 'coc-git',
      \ 'coc-prettier',
      \ 'https://github.com/xabikos/vscode-react',
      \ 'https://github.com/skyran1278/js-jsx-snippets',
      \ 'https://github.com/nathanchapman/vscode-javascript-snippets',
      \ 'https://github.com/florinpatrascu/vscode-elixir-snippets',
      \ 'coc-elixir',
      \ 'coc-docker',
      \ 'https://github.com/xabikos/vscode-javascript',
      \ 'https://github.com/infeng/vscode-react-typescript',
      \ 'https://github.com/softchris/ts-snippets',
      \ 'coc-svelte',
      \ 'coc-graphql',
      \ 'coc-yaml',
      \ 'coc-python',
      \ 'coc-pyright',
      \ 'coc-explorer',]

" Fails to load sometimes. mapping to install
map <leader><leader>cl :CocInstall https://github.com/xabikos/vscode-javascript<CR>


" ************************
" TODO: fix nvim working inside python project
if has("nvim")
  " let g:python3_host_prog = '/home/jonathan/.pyenv/versions/neovim3/bin'
  " let g:python_host_prog = '/home/jonathan/.pyenv/versions/neovim2/bin'
  let g:python3_host_prog = '/home/jonathan/.pyenv/versions/neovim3/lib/python3.8/site-packages'
  let g:python_host_prog = '/home/jonathan/.pyenv/versions/neovim2/lib/python2.7/site-packages'
  let g:python3_host_prog = '/home/jonathan/.pyenv/versions/neovim3/bin/python'
  let g:python_host_prog = '/home/jonathan/.pyenv/versions/neovim2/bin/python'

  " let g:python3_host_prog = '/usr/bin/python3'
  " let g:python_host_prog = '/usr/bin/python'
endif

" Basic Settings
filetype plugin indent on
filetype on
filetype plugin on
syntax on
" MacOS CONFIG
" set clipboard=unnamed
" TODO: LINUX CONFIG
set clipboard+=unnamedplus
set mouse=a
set t_Co=256
set nocompatible

" Split Settings
set splitbelow
set splitright
"split navigations Ctrl [J K L H]
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

"no backup files
set nobackup

" only in case you don't want a backup file while editing
set nowritebackup

" no swap files
set noswapfile

" Line Wrapping
" text wrap
:set tw=80
:set fo+=t
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical
set laststatus=2 " show the satus line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set showcmd " show incomplete commands

" Tab Control
set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set smartindent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

" Code Folding Settings
set foldmethod=indent " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" map to fold
nnoremap <space> za

" Nvim Terminal Mappings ---
if has('nvim')
  tnoremap jk <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

" Color Scheme
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None
" this line is for debugging italic in nvim not needed
" highlight Comment cterm=italic

" Ariake Dark
" colorscheme Ariake-Dark Linux
" colorscheme ariake-dark
" set background=dark
" highlight clear SignColumn
" highlight clear LineNr
" highlight clear endOfBuffer
" hi Normal ctermbg=NONE guibg=NONE

" OneDark
" colorscheme onedark
" " g:onedark_hide_endofbuffer: 1
" " g:onedark_terminal_italics: 1
" let g:onedark_termcolors=256
" highlight Normal ctermbg=None
" highlight clear SignColumn
" highlight clear LineNr

" Zenburn
" colors zenburn
" highlight Normal ctermbg=None
" highlight clear SignColumn
" highlight clear LineNr

" Lucius
" colorscheme lucius
" highlight Normal ctermbg=None
" highlight clear SignColumn
" highlight clear LineNr

" hack work around for css highlighting.  use Ctrl h, and then run Ctrl v. fixes
" highlighting and reverts colors back to how they should be
nnoremap <C-h> :syntax on <cr>
nnoremap <C-v> :source ~/.config/nvim/init.vim <cr>

" Startify Config ---
nnoremap <leader>s :Startify<cr>
nnoremap <leader>ss :SSave<cr>
nnoremap <leader>sl :SLoad<cr>
nnoremap <leader>sd :SDelete<cr>

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Project Dir '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:startify_bookmarks = [ {'n': '~/.config/nvim/init.vim'}, {'v': '~/.vimrc'}, {'z': '~/.zshrc'}, {'d': '~/dotfiles'} ]

let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1

let g:webdevicons_enable_startify = 1
let g:startify_custom_header = [
          \"   d8,       d8b",
          \"  `8P        88P",
          \"            d88",
          \"  d88   d888888  ?88,.d88b,'",
          \"  ?88  d8P' ?88  `?88'  ?88",
          \"   88b 88b  ,88b   88b  d8P",
          \"   `88b`?88P'`88b  888888P''",
          \"    )88            88P''",
          \"   ,88P           d88",
          \"`?888P            ?8P",
          \ ]

"Polyglot enable syntax
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer --preset floating'       , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':RnvimrToggle'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']

" s is for search
let g:which_key_map.w = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ }

" vimagit settings ---
nnoremap <leader>g :Magit<CR>

" Fast Substitution
nnoremap S :%s///gc<Left><Left><Left><Left>

" Line Numbers
set relativenumber

function! LineNumberToggle()
if(&relativenumber == 1)
  set norelativenumber
  set number
else
  set relativenumber
endif
endfunc

" Leader nt toggles relative/number
nnoremap <leader>nt :call LineNumberToggle()<cr>

" Search
set showmatch
set wildmenu
set wildmode=longest:full,full
set hidden
set completeopt+=noinsert
set ignorecase
set smartcase
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros
set magic " Set magic on, for regex

" Settings error bells
set noerrorbells
set visualbell
"set t_vb=
"set tm=500

" clear results after search space ctrl l
" nnoremap <C-L> :noh<CR><C-L>
nnoremap <leader>l :noh<CR><C-L>

"re-map esc to jk
inoremap jk <esc>

"emmet leader key
let g:user_emmet_leader_key=','

" Don's skip lines
nnoremap j gj
nnoremap k gk

"  shortcut to save
 nmap <leader>w :w<cr>
 nmap <leader>wa :wa<cr>

 "edit ~/.vim
"  map <leader>ev :e! ~/.vimrc<cr>
map <leader>ev :e! ~/config/nvim/init.vim<cr>

 " scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" White Space
"auto clear white space on save
autocmd BufWritePre * StripWhitespace

" Settings vim-signature
" refresh marks if out of sync
nnoremap <leader>sr :SignatureRefresh<CR>


" TODO: Settings vim-fugitive mappings
" Bring up 3 way split help docs with :help Gdiffsplit
" this is a three-way diff against the "ours" and "theirs" ancestors.
" Additional d2o and d3o maps are provided to obtain the hunk from the "ours"
" or "theirs" ancestor, respectively. jump between hunks with c] and c[
nnoremap <leader>gd : Gdiffsplit!<CR>
" d2o pull in from file on left
" d3o pull in from file on right

" Merginal Settings
" :Merginal plugin for branches
nnoremap <leader>gm :Merginal<CR>

" NERDTree Settings
"NERDTree toggle
" map <C-n> :NERDTreeToggle<CR>

" Indent Guide Plugin Settings
"<Leader>ig "toggles indent guides
nnoremap <leader>ig :IndentGuidesToggle<CR>

" Vim-Plug ---
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>puu :PlugUpgrade<CR>

" Ranger nvim Config ---
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Make Ranger to be hidden after picking a file
" let g:rnvimr_pick_enable = 1

" Disable a border for floating window
" let g:rnvimr_draw_border = 0

" Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
" let g:rnvimr_bw_enable = 1

" Set up only two columns in miller mode and draw border with separators
" let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"
"             \ --cmd="set draw_borders separators"'

" highlight text in Floating window
" highlight NormalFloat ctermfg=0 ctermbg=16 guibg=#2b3038

" nnoremap <silent> <M-o> :RnvimrToggle<CR>
map <leader>r :RnvimrToggle<CR>
" tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
" tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
" tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
" tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Customize the initial layout
" let g:rnvimr_layout = { 'relative': 'editor',
"             \ 'width': float2nr(round(0.6 * &columns)),
"             \ 'height': float2nr(round(0.6 * &lines)),
"             \ 'col': float2nr(round(0.2 * &columns)),
"             \ 'row': float2nr(round(0.2 * &lines)),
"             \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
" let g:rnvimr_presets = [
"             \ {},
"             \ {'width': 0.700, 'height': 0.700},
"             \ {'width': 0.800, 'height': 0.800},
"             \ {'width': 0.950, 'height': 0.950}
"             \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
"             \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
"             \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
"             \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
"             \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
"             \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
"             \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
"             \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]


" Vim Ranger
" let g:ranger_map_keys = 0
" map <leader>r :Ranger<CR>
"Ranger // open current file by default
"RangerCurrentFile // Default Ranger behaviour
"RangerCurrentDirectory
"RangerWorkingDirectory

"RangerNewTab
"RangerCurrentFileNewTab
"RangerCurrentDirectoryNewTab
"RangerWorkingDirectoryNewTab

" Rainbow Parentheses
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" better rainbow parentheses color options
" let g:rbpt_colorpairs = [
" 		\ ['darkMagenta',       'RoyalBlue3'],
" 		\ ['Darkblue',    'SeaGreen3'],
" 		\ ['darkgray',    'DarkOrchid3'],
" 		\ ['darkgreen',   'seagreen3'],
" 		\ ['darkcyan',    'RoyalBlue3'],
" 		\ ['darkblue',     'SeaGreen3'],
" 		\ ['darkmagenta', 'DarkOrchid3'],
" 		\ ['darkMagenta',       'seagreen3'],
" 		\ ['gray',        'RoyalBlue3'],
" 		\ ['darkcyan',       'SeaGreen3'],
" 		\ ['darkmagenta', 'DarkOrchid3'],
" 		\ ['Darkblue',    'darkcyan'],
" 		\ ['darkgreen',   'RoyalBlue3'],
" 		\ ['darkcyan',    'SeaGreen3'],
" 		\ ['lightmagenta',     'DarkOrchid3'],
" 		\ ['lightcyan',         'darkmagenta'],
" 		\ ]


" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" TODO: Copy Paste
" set pastetoggle=<Leader><Leader>p

" FZF Settings
" TODO: set rtp+=/usr/local/opt/fzf
" set rtp+=/home/jonathan/.config/nvim/plugged
" set rtp+=~/.config/nvim/init.vim
" set rtp+=/home/jonathan/dotfiles/neovim/.config/nvim/init.vim
" customize fzf colors to match your color scheme
let g:fzf_colors =
	\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_buffers_jump = 1
" let g:fzf_tags_command = 'ctags -R'
"default :buffers
" TODO: nmap <Leader>b :buffers<CR>
"FZF :Buffers
nmap <Leader>b :Buffers<CR>
" nmap <Leader>n :files<CR>
nmap <Leader>m :bufdo! bw<CR>
nmap <Leader>ju :jumps<CR>
nnoremap <Leader>t :Tags<CR>

" TODO: map to call up jump list
" nnoremap <leader>ju :ju<CR>


" map to call up jump list
" nnoremap <leader>ju :ju<CR>
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

nmap <Leader>j :call GotoJump()<CR>

" set tags=tags

" set leaderf to open FZF
nmap <Leader>f :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" USEFUL FOR POPULATING QUICKFIX WINDOW
let g:ackprg = 'rg --vimgrep --no-heading'
" EXAMPLE USAGE
" :Ack GoalList
" :cdo %s/GoalList/GoalLists/gc

set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m

" Settings for vcoolor
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>c'

" Debugger Mappings
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint


" Line Movement
" move lines up or dowwn
" nnoremap <C-j> :m .+1<CR>==
" nnoremap <C-k> :m .-2<CR>==
" inoremap <C-j> <Esc>:m .+1<CR>==gi
" inoremap <C-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-j> :m '>+1<CR>gv=gv
" vnoremap <C-k> :m '>-1<CR>gv=gv

" Quick Scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END

" PYTHON SETTINGS
" PEP 8 indentation here
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79
autocmd FileType python setlocal expandtab autoindent fileformat=unix
autocmd BufWritePre *.py execute ':Black'
let g:black_fast = 0 "(defaults to 0)
let g:black_linelength = 79 "(defaults to 88)
let g:black_skip_string_normalization = 0 "(defaults to 0)
" let g:black_virtualenv = ~/ "(defaults to ~/.vim/black or ~/.local/share/nvim/black)
"Flag unnecessary WhiteSpace
"Flag unnecessary WhiteSpace
" au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" GO SETTINGS
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>

" UTF-8 Support
set encoding=utf-8

" C ********
map <F8> :!gcc % -Wall -Wextra -o %< && ./%< <CR>


" Not Needed for Nvim
"matchit.vim
" :filetype plugin on
" packadd! matchit
" :source $VIMRUNTIME/macros/matchit.vim


"VISTA SETTINGS
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']

map <leader>v :Vista!!<CR>
map <leader>vc :Vista coc<CR>
map <leader>vf :Vista finder coc<CR>

" fzf-checkout Settings ---
" Press alt-enter to track a remote branch locally (origin/foo becomes foo)
" Press ctrl-n to create a branch with the current query as name
" Press ctrl-d to delete a branch
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GBranches<CR>

" Coc Settings
nnoremap <leader>cu :CocUpdate<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>p <Plug>(coc-format-selected)
nnoremap <leader>p <Plug>(coc-format-selected)

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gk :call CocAction('jumpDefinition', v:false)<CR>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Coc-Explorer Settings ---
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 30,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 30,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" nmap <leader>ed :CocCommand explorer --preset .vim<CR>
" nmap <leader>ef :CocCommand explorer --preset floating<CR>
nmap <leader>n :CocCommand explorer --preset .vim<CR>
nmap <leader>nf :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

endif

"SNIPPETS
"nfn const fn = (params) => {}
"clo console.log(':',)
"imp import moduleName from 'module'
"imd import { destructuredModule } from 'module'
"exp export default moduleName
"exd export { destructuredModule } from 'module'
"sw switch statment
"fl basic for loop
"dob const {propName} = objectToDestructure
"dar const [propName] = arrayToDestructure
"imr import React from 'react'
"imrd import ReactDOM from 'react-dom'
"imrc import React, { Component } from 'react'
"imrs import React, { useState } from 'react'
"imrse import React, { useState, useEffect } from 'react'
"ren render() { return(  ) }
"rfce and or rfc react functional component export
"l= let {${1:name}} = ${2:value}
"co= const {${1:name}} = ${2:value}
"if if statment
"el else statment
"ife if else statment
"ei else if statment
"ter ternary operator
"tc try catch
"tcf try catch finally
"af arrow function
"afb arrow function with body
"fe forEach loop
"map map
"reduce
"filter
"ol obj literal
"slol same line obj literal
"kv key/value pair
"r return
"rc return component
"cb node.js style callback
"re require
"rel require ./ local
"req require assignment
"reql require local assignment
"dreq
"dreql
"me module.exports
"meo module.exports = {}

" Notes
"ma - mark a `a to return, mb = mark b `b to return
":'a,'bs/C/S/c  changes all c's above to S
" global search and replace with confirm y or n
":%s/img/jpg/gc

" ----------------------

" VISUALLY SELECT AND "p y OR ANY LETTER OR NUMBER YANKS TO SPECIFIC REGISTER
" TO PASTE IT PRESS "p p
" :reg TO CHECK OUT PRINT REGISTER

" ----------------------

" default vim ctrl a will increment and ctrl x will decrement

" ----------------------

" vim Surround
" normal mode
" ds -delete a surrounding
" cs -change a surrounding
" ys -add a surrounding
" yss -add a surrounding to the whole line
" ySs -add a surrounding to the whole line, place it on a new line + indent
" ySS -same as ySs
" visual mode
" s -in visual mode, add a surrounding
" S -invisual mose, add a surrounding but place text on a new line and indend
" Surroundings can be added with the same cs command, which takes a
" surrounding target, or with the ys command that takes a valid vim motion.
" special yss comand that applies a surrounding to the whole line, and ySS
" that applies the surrounding to the whole line, places the text on a new
" line and indents it.
" (hello world) ysi(' - ('hello world')
" hello world! ysiw) - hello (world)!
" deleting surroundings ds
" after ds command expects the surrounding target you want to delete.
" ',",`,(,),{,},[,],<,>, and a special 't' target for deleting the ineermost
" HTML tag
" 'hello world' - ds' -- hello world
" (123+4*56)/2 - ds( -- 123+4*56/2
" <div>foo</div> dst -- foo
" Surrounding can be changed with the cs command. takes a surrounding target
" and it also takes the surrounding replacement.
" more targets w for word, W for word + skip punctuation, s for sentence and p
" for paragraph
" "hello world" - cs"' -- 'hello world'
" "hello world" - cs"<q> -- <q>hello world</q>
" <div>foo</div> - cst<p> -- <p>foo</p>
" foo! - csw' -- 'foo'!
" foo! - csW' -- 'foo!'


" ----------------------


"gqq to break up a line if needed.
" shiftj will join the bottome line to the line the cursor is on.

" shift V to higlight and then > to indent the selected lines



