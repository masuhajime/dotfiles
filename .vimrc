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

