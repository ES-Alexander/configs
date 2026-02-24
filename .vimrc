syntax on " Syntax highlighting
set showmatch " Shows matching brackets
set ruler " Always show line numbers

set smarttab " Autotabs where possible
set tabstop=4 " Tabs are 4 spaces wide
set expandtab " Tab insertions are replaced with spaces
set shiftwidth=4 " SHIFT+> indents selection by 4 spaces

autocmd BufRead *.rst set syntax=off " disable syntax highlighting for rst files, because it hangs sometimes
