
if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'meain/vim-printer'

Plug 'scrooloose/nerdtree'  " file list

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

Plug 'liuchengxu/vista.vim'
Plug 'https://github.com/vwxyutarooo/nerdtree-devicons-syntax'
Plug 'Konfekt/FastFold'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
Plug 'kien/ctrlp.vim'  " fuzzy search files

Plug 'uiiaoo/java-syntax.vim'
Plug 'justinmk/vim-sneak'
Plug 'wsdjeg/FlyGrep.vim'  " awesome grep on the fly
"Plug 'w0rp/ale'  " python linters

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'szymonmaszke/vimpyter' "vim-plug
"

Plug 'bluz71/vim-nightfly-guicolors'

Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'

Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'wellle/context.vim'
Plug 'sbdchd/vim-run'

Plug 'psliwka/vim-smoothie'
Plug 'auxiliary/vim-layout'     " i3 like layout

Plug 'https://github.com/tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'windwp/vim-floaterm-repl'
Plug 'jdhao/better-escape.vim'
Plug '/home/viv/.vim/plugged/dracula_pro/'

Plug 'kassio/neoterm'
Plug 'metakirby5/codi.vim'
Plug 'https://github.com/bfredl/nvim-ipy'
Plug 'junegunn/goyo.vim'


Plug 'aperezdc/vim-template'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'frazrepo/vim-rainbow'
Plug 'relastle/vim-nayvy'
Plug 'https://github.com/tpope/vim-sleuth'


Plug 'https://github.com/chiedo/vim-case-convert'
Plug 'https://github.com/nikersify/dracula-vim'
Plug 'https://github.com/tmhedberg/SimpylFold'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'francoiscabrol/ranger.vim'
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter


"sdsd
Plug 'jeetsukumaran/vim-pythonsense' "Moving functions

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
Plug 'Chiel92/vim-autoformat'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'wellle/targets.vim'
Plug 'https://github.com/machakann/vim-sandwich/'
Plug 'https://github.com/mbbill/undotree'
Plug 'wsdjeg/FlyGrep.vim'  " awesome grep on the fly
Plug 'tpope/vim-commentary'  "comment-out by gc
Plug 'epheien/termdbg'

"Plug 'neomake/neomake'
" looking
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'myusuf3/numbers.vim'

call plug#end()


let g:vista#renderer#enable_icon = 1


" path to your python
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

filetype on
filetype plugin on
filetype plugin indent on
syntax on

set cmdheight=2
set updatetime=100

set fileformat=unix
set shortmess+=c

set mouse=a  " change cursor per mode
set number  " always show current line number
set smartcase  " better case-sensitivity when searching
set wrapscan  " begin search from top of file when nothing is found anymore


set expandtab
set tabstop=4
set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4

set history=1000  " remember more commands and search history

set noswapfile  " swap files give annoying warning

set breakindent  " preserve horizontal whitespace when wrapping
set showbreak=..
set lbr  " wrap words


" set nowrap  " i turn on wrap manually when needed

set scrolloff=3 " keep three lines between the cursor and the edge of the screen

set undodir=~/.vim/undodir
set undofile  " save undos
set undolevels=10000  " maximum number of changes that can be undone
set undoreload=100000  " maximum number lines to save for undo on a buffer reload

set noshowmode  " keep command line clean
set noshowcmd

set splitright  " i prefer splitting right and below
set splitbelow

set hlsearch  " highlight search and search while typing
set incsearch
set cpoptions+=x  " stay at seach item when <esc>

set noerrorbells  " remove bells (i think this is default in neovim)
set visualbell
set t_vb=
set relativenumber number
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications

" easy split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tabs:
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


" mapping Esc
imap <F13> <Esc>
cnoremap <Esc> <C-c>
inoremap <c-c> <ESC>
nnoremap <C-z> <Esc>  " disable terminal ctrl-z

" map S to replace current word with pasteboard
nnoremap S diw"0P
nnoremap cc "_cc
nnoremap q: :q<CR>
nnoremap w: :w<CR>

" map paste, yank and delete to named register so the content
" will not be overwritten (I know I should just remember...)
nnoremap x "_x
vnoremap x "_x

set clipboard=unnamedplus

" toggle nerdtree on ctrl+n


map <C-n> :CHADopen<CR>





let g:tagbar_horizontal = 15
let g:undotree_SplitWidth = 40

let UndotreePos = 'left'
nnoremap <f10>  :set nosplitright<CR>:UndotreeToggle <CR>

let g:formatters_vue = ['black']
let g:run_all_formatters_vue = 1

noremap <F8> :Autoformat<CR>
nnoremap <F4> :Black<CR>




set pumheight=8

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <silent> <expr> <CR> (pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : "\<CR>"

" use <tab> for trigger completion and navigate to the next complete item


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'



let g:airline_powerline_fonts = 1
let g:airline_section_y = ""

" Airline settings
" do not show error/warning section
let g:airline_section_error = ""
let g:airline_section_warning = ""

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" theicfire .vimrc tips
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
let maplocalleader = '\'
let g:maplocalleader = '\'

nnoremap <SPACE> <Nop>

"auto indent for brackets


nmap <leader>w :w!<cr>
nmap <leader>q :lcl<cr>:q<cr>
nnoremap <leader>h :nohlsearch<Bar>:echo<CR>

" FlyGrep settings
nnoremap <leader>s :FlyGrep<cr>

" easy breakpoint python
au FileType python map <silent> <leader>b ofrom ipdb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>B Ofrom ipdb import set_trace; set_trace()<esc>

au FileType python map <silent> <leader>j ofrom pdb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>J Ofrom pdb import set_trace; set_trace()<esc>

" ale options
let g:ale_completion_enabled = 0


let g:ale_python_pylint_options = '--rcfile ~/.config/pylintrc'

let g:ale_list_window_size =  2
let g:ale_sign_column_always = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0

let g:ale_lint_on_save = 1

" Options are in .pylintrc!
highlight VertSplit ctermbg=253

let g:ale_sign_error = '‼'
let g:ale_sign_warning = '∙'
let g:ale_lint_on_text_changed = 'never'

let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0



nmap <silent> <C-M> <Plug>(ale_previous_wrap)
nmap <silent> <C-m> <Plug>(ale_next_wrap)




" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction

onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")





highlight self ctermfg=239



let g:lens#disabled_filetypes = ['nerdtree','chadtree']
autocmd BufRead *.py set wrap
autocmd BufRead *.py set splitbelow
autocmd BufRead *.py set go+=b



" Remove all trailing whitespace by pressing C-S
nnoremap <C-S> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>


au BufEnter * if &buftype == 'terminal' | :startinsert | endif
nnoremap <C-a> <Esc>
nnoremap <C-x> <Esc>

" vimgutter options
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0


let g:ctrlp_custom_ignore = '\v\.(npy|jpg|pyc|so|dll)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Plugin settings
  " Airline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif






  " EasyAlign
    xmap ga <Plug>(LiveEasyAlign)
    nmap ga <Plug>(LiveEasyAlign)
  " EasyMotion
    hi EasyMotionTarget ctermfg=9 guifg=red
    hi EasyMotionTarget2First ctermfg=9 guifg=red
    hi EasyMotionTarget2Second ctermfg=9 guifg=lightred
    hi link EasyMotionShade Comment
  " Emmet
    let g:user_emmet_leader_key = ',z'
  " ESearch
    let g:esearch = {
      \ 'adapter':    'ack',
      \ 'backend':    'nvim',
      \ 'out':        'win',
      \ 'batch_size': 1000,
      \ 'use':        ['visual', 'hlsearch', 'last'],
      \}
  " IndentLine
    let g:indentLine_color_gui = "#504945"
  " Markdown_preview (a plugin in nyaovim)
    let g:markdown_preview_eager = 1
    let g:markdown_preview_auto = 1
  " Multi_cursor
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_start_key='<c-n>'
    let g:multi_cursor_next_key='<tab>'
    let g:multi_cursor_prev_key='b'
    let g:multi_cursor_skip_key='x'
    let g:multi_cursor_quit_key='q'

  " Neoterm
    let g:neoterm_size=20
    let g:neoterm_repl_command= 'zsh'
    let g:neoterm_default_mod = 'horizontal'
    " toogle the terminal
    " kills the current job (send a <c-c>)
    nnoremap <silent> tc :call neoterm#kill()<cr>
  " Notes
    let g:notes_directories = ['~/Dev/notes-in-vim']
  " Startify
    command! -nargs=1 CD cd <args> | Startify
    autocmd User Startified setlocal cursorline
    let g:startify_enable_special         = 0
    let g:startify_files_number           = 8
    let g:startify_relative_path          = 1
    let g:startify_change_to_dir          = 1
    let g:startify_update_oldfiles        = 1
    let g:startify_session_autoload       = 1
    let g:startify_session_persistence    = 1
    let g:startify_session_delete_buffers = 1
    let g:startify_list_order = [
      \ ['   LRU within this dir:'],
      \ 'dir',
      \ ['   LRU:'],
      \ 'files',
      \ ['   Sessions:'],
      \ 'sessions',
      \ ['   Bookmarks:'],
      \ 'bookmarks',
      \ ]
    let g:startify_skiplist = [
                \ 'COMMIT_EDITMSG',
                \ 'plugged/.*/doc',
                \ '/data/repo/neovim/runtime/doc',
                \ 'init.vim',
                \ 'nyaovimrc.html',
                \ ]
    let g:startify_bookmarks = [
                \ { 'c': '~/.config/nvim/init.vim' },
                \ { 'y': '~/GitHub/' },
                \ ]
    let g:startify_custom_footer =
          \ ['', "   I like it!", '']
    highlight StartifyFooter  ctermfg=240
  " Supertab
    let g:SuperTabMappingForward = '<s-tab>'
    let g:SuperTabMappingBackward = '<tab>'
  " Tagbar
    let g:tagbar_width=30
  " Taglist
    let Tlist_Show_One_File=1
    let Tlist_Exit_OnlyWindow=1
    let Tlist_File_Fold_Auto_Close=1
    let Tlist_WinWidth=30
    let Tlist_Use_Right_Window=1



" Automatics
  function! ToStartify()
    if winnr("$") == 1 && buffer_name(winbufnr(winnr())) != ""
      vs
      Startify
      exec "normal \<c-w>w"
    endif
  endfunction
  au! QuitPre * call ToStartify()
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufWritePost *.scala :EnTypeCheck
  cd $HOME
  au BufRead,BufNewFile,BufEnter \@!(term://)* cd %:p:h
  autocmd FileType json set nocursorcolumn
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ | endif


" Bind F5 to save file if modified and execute python script in a buf%



map <F7> :let $VIM_DIR=expand('%:p:h')<CR>: vsplit term://zsh<CR>cd $VIM_DIR<CR>

nnoremap <silent> <F6> :Run <cr>

nnoremap <silent> <F5> :call SaveAndExecutePython()<CR>
vnoremap <silent> <F5> :<C-u>call SaveAndExecutePython()<CR>

let g:previous_window = -1
function SmartInsert()
  if &buftype == 'term://*'
    if g:previous_window != winnr()
      startinsert
    endif
    let g:previous_window = winnr()
  else
    let g:previous_window = -1
  endif
endfunction

au BufEnter * call SmartInsert()

" https://stackoverflow.com/questions/18948491/running-python-code-in-vim
function! SaveAndExecutePython()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright new ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    " setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!python " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    "execute 'resize' . line('$')

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
    if (line('$') == 1 && getline(1) == '')
      q!
    endif
    silent execute 'wincmd p'
endfunction

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1


colorscheme dracula
"autocmd ColorScheme dracula_pro* hi CursorLine cterm=underline term=underline

let g:dracula_bold = 1
let g:dracula_bold = 1
let g:dracula_underline = 1
let g:dracula_undercurl = 1
let g:dracula_inverse = 1
let g:dracula_colorterm = 1

"hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermfg=252 ctermbg=none
set termguicolors




let g:airline_theme='dracula'



command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')


let g:sandwich#recipes = [
    \   {'buns': ["`",                "'"],                 'nesting': 1, 'input': [ "u'" ]  },
    \   {'buns': ['“',                '”'],                 'nesting': 1, 'input': [ 'u"' ]  },
    \   {'buns': ['„',                '“'],                 'nesting': 1, 'input': [ 'U"', 'ug' ]  },
    \   {'buns': ['«',                '»'],                 'nesting': 1, 'input': [ 'u<', 'uf' ]  },
    \   {'buns': ["'''",              "'''"],               'nesting': 0, 'input': [ "3'" ], 'filetype': ['python'] },
    \   {'buns': ['"""',              '"""'],               'nesting': 0, 'input': [ '3"' ], 'filetype': ['python'] },
    \   {'buns': ["`",                "'"],                 'nesting': 1, 'input': [ "l'", "l`" ], 'filetype': ['tex', 'plaintex'] }]

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)+g:sandwich#recipes




let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'


if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif





" diff window height
if !exists('g:undotree_DiffpanelHeight')
    let g:undotree_DiffpanelHeight = 8
endif





" Highlight changed text
if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 1
endif

" Highlight changed text using signs in the gutter
if !exists('g:undotree_HighlightChangedWithSign')
    let g:undotree_HighlightChangedWithSign = 1
endif

" Highlight linked syntax type.
" You may chose your favorite through ":hi" command
if !exists('g:undotree_HighlightSyntaxAdd')
    let g:undotree_HighlightSyntaxAdd = "DiffAdd"
endif
if !exists('g:undotree_HighlightSyntaxChange')
    let g:undotree_HighlightSyntaxChange = "DiffChange"
endif
if !exists('g:undotree_HighlightSyntaxDel')
    let g:undotree_HighlightSyntaxDel = "DiffDelete"
endif







" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }






function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction





set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc



autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


let g:ale_linters = {
  \   'markdown': ['mdl'],
  \   'dockerfile': ['dockerfile_lint'],
  \   'bib': ['bibclean'],
  \   'go': ['gofmt', 'golint', 'go vet', 'golangserver'],
  \   'tex': ['proselint', 'chktex', 'lacheck','texlab','latexindent','textlint'],
  \   'plaintex': ['proselint', 'chktex', 'lacheck','texlab'],
  \   'help': [],
  \   'python': ['black','pylint','mypy','jedils'],
  \   'ruby': ['solargraph', 'rubocop', 'ruby'],
  \   'groovy': ['android'],
  \   'xml': ['android'],
  \   'java': ['javalsp'],
  \   'kotlin': ['ktlint', 'languageserver'],
  \   'javascript': ['eslint'],
  \   'text': ['proselint', 'write-good'],
  \   'vim': ['vint'],
  \   'yaml': ['yamllint'],
  \   'openapi': ['yamllint', 'ibm-validator'],
  \   'mail': ['proselint', 'write-good']
\}

let g:ale_fixers = {
      \ 'python': ['nayvy#ale_fixer', 'black', 'isort','add_blank_lines_for_python_control_statements','trim_whitespace'],
      \'java':['google_java_format'],
      \ 'tex':['textlint']
      \ }

let g:ale_python_mypy_show_notes = 1


let g:ale_fix_on_save = 1
nmap <F2> :ALEFix<CR>

let g:ale_set_balloons = 1
let g:ale_hover_cursor = 1
let g:ale_hover_to_preview = 1
let g:ale_float_preview = 1
let g:ale_virtualtext_cursor = 1
let g:ale_disable_lsp = 1


function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_completion_enabled=1








let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

let g:targets_aiAI = 'aiAI'


let g:Tex_MultipleCompileFormats='pdf'


let g:Tex_CompileRule_pdf = 'pdflatex -output-directory=output '
  \. '-synctex=-1 -src-specials -interaction=nonstopmode $*; '
  \. 'pdflatex -output-directory=output '
  \. '-synctex=-1 -src-specials -interaction=nonstopmode $*'



let g:templates_no_autocmd = 1


let g:email = 'viv.sedov@hotmail.com'
let g:user = 'Viv Sedov'

"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab





" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']


let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]



let g:doge_doc_standard_python = 'google'
:let g:doge_python_settings = {
\  'single_quotes': 0
\}

map <F1> :DogeGenerate<CR>
map <C-b> :TemplateHere<CR>




let g:nayvy_import_config_path = '$HOME/nayvy.py'


if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

setlocal colorcolumn=+1


nmap <space>gb :Gblame<cr>
nmap <space>gs :Gstatus<cr>
nmap <space>gc :Gcommit -v<cr>
nmap <space>ga :Git add -p<cr>
nmap <space>gm :Gcommit --amend<cr>
nmap <space>gpp :Gpush<cr>
nmap <space>gd :Gdiff<cr>
nmap <space>gw :Gwrite<cr>


nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>



" Configuration example
"<C-w><C-p> this is to move to the next windw


"          y - stage this hunk
"          n - do not stage this hunk
"          q - quit; do not stage this hunk nor any of the remaining ones
"          a - stage this hunk and all later hunks in the file
"          d - do not stage this hunk nor any of the later hunks in the file
"          g - select a hunk to go to
"          / - search for a hunk matching the given regex
"          j - leave this hunk undecided, see next undecided hunk
"          J - leave this hunk undecided, see next hunk
"          k - leave this hunk undecided, see previous undecided hunk
"          K - leave this hunk undecided, see previous hunk
"          s - split the current hunk into smaller hunks
"          e - manually edit the current hunk
"          ? - print help





set autochdir

let g:floaterm_rootmarkers = []

let g:floaterm_height = 0.5
let g:floaterm_width = 0.45

let g:floaterm_position = 'bottomright'

nnoremap   <space>1    :FloatermNew <CR>
tnoremap   <space>2    <C-\><C-n>:FloatermNew<CR>
nnoremap   <space>3   :FloatermPrev<CR>
tnoremap   <space>4    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <space>5   :FloatermNext<CR>
tnoremap   <space>6   <C-\><C-n>:FloatermNext<CR>
nnoremap   <space>7  :FloatermToggle<CR>
tnoremap   <space>8 <C-\><C-n>:FloatermToggle<CR>







let g:SimpylFold_docstring_preview = 1
let b:SimpylFold_fold_import = 1
let b:SimpylFold_fold_import = 1


let g:neoterm_default_mod = 'botright'
nmap <space>o :TREPLSendSelection<CR>






let g:neoterm_autoinsert=1


let g:neoterm_size=16

let g:neoterm_direct_open_repl=1
let g:neoterm_repl_python='ipython3 --no-autoindent'

let g:better_escape_interval = 200

nnoremap <space>uc :FloatermRepl<CR>
vnoremap <space>uc :FloatermRepl<CR>

let g:floaterm_repl_runner= "$HOME/.config/nvim/runner.sh"



nnoremap <leader>tl :<c-u>exec v:count.'Tclear'<cr>

let g:neoterm_repl_ipython_magic = 1

let g:neoterm_repl_cellmarker = '^# %%'


let g:codi#virtual_text=1
let g:codi#virtual_text_prefix = "❯ "

let g:codi#interpreters = {
    \ 'python3': {
        \ 'bin': 'python3',
        \ 'prompt': '^\(>>>\|\.\.\.\) '
    \ },
    \ 'python2': {
        \ 'bin': 'python2',
        \ 'prompt': '^\(>>>\|\.\.\.\) '
    \ }
\ }


let g:nvim_ipy_perform_mappings = 0
map <silent> <c-s> <Plug>(IPy-Run)
let g:ipy_celldef = '^#: '
let g:ipy_set_ft = 1

map <silent> <c-a> <Plug>(IPy-RunCell)

nnoremap <silent> <c-q> :call IPyRun('exit()',1)<cr>



 nnoremap <F3> :NumbersToggle<CR>

let g:indentLine_defaultGroup = 'Constant'
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


let g:indentLine_color_gui = '#755faa'

let g:is_pythonsense_alternate_motion_keymaps = 1



let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

map t <Plug>Sneak_t
map T <Plug>Sneak_T


autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>


augroup lens
  let g:lens#enter_disabled = 0
  autocmd! WinNew * let g:lens#enter_disabled = 1
  autocmd! WinEnter * call lens#win_enter()
  autocmd! WinNew * let g:lens#enter_disabled = 0
augroup END

let g:run_split = 'right'


au BufLeave * silent! wall


function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave
nnoremap <leader>l <cmd>call setqflist([])<cr>

let g:chadtree_settings = {
    \ "theme.text_colour_set": "solarized_light",
    \  "theme.icon_colour_set":"github",
    \  "theme.icon_glyph_set":"devicons",
    \ "ignore.name_glob":['.*'],
    \  "view.width":10,
    \ }

autocmd FileType CHADtree setlocal number relativenumber
nnoremap <leader>l <cmd>call setqflist([])<cr>


let g:SnipRun_repl_behavior_enable = ["Python3_jupyter"]
let g:SnipRun_select_interpreters = ["Python3_jupyter"]

nmap <leader>g <Plug>SnipRun
vmap g <Plug>SnipRun



" Starting to use vimtex and it needs several configurations to work correctly
let g:vimtex_fold_enabled = 0
let g:vimtex_indent_enabled = 1
let g:vimtex_complete_recursive_bib = 0
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 1
let g:vimtex_quickfix_mode = 2
let g:vimtex_quickfix_open_on_warning = 1

let g:vimtex_view_general_options = '-reuse-instance @pdf'

call vimtex#imaps#add_map({
  \ 'lhs' : '<m-i>',
  \ 'rhs' : '\item ',
  \ 'leader' : '',
  \ 'wrapper' : 'vimtex#imaps#wrap_environment',
  \ 'context' : ["itemize", "enumerate", "compactitem"],
  \})


setlocal omnifunc=v:lua.vim.lsp.omnifunc



