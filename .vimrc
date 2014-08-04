set encoding=japan
set fileencodings=utf-8,sjisi,so-2022-jp,euc-jp
set nu
colorscheme darkblue
set expandtab
set tabstop=4
set shiftwidth=4
set nocompatible
set title
    
"" show match quote like ()
set matchtime=2
set wildmenu

"" show vim status line
set laststatus=2
"" status line info
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l/%L:%p%%>
"" status line color
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white


if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundle 'Shougo/unite.vim'
NeoBundleCheck
