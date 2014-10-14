set encoding=japan
set fileencodings=utf-8,sjisi,so-2022-jp,euc-jp
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set nocompatible
set title
autocmd FileType * setlocal formatoptions-=ro
    
"" show match quote like ()
set matchtime=2
set wildmenu

colorscheme inkpot
syntax on

"" show vim status line
set laststatus=2
"" status line info
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l/%L:%p%%>
"" status line color
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

