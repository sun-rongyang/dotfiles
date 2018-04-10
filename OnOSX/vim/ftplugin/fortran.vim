let fortran_free_source=1
let fortran_do_enddo=1
let fortran_fold=1 " add fold feature for fortran file

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set smartcase

let indexer_ctagsCommandLineOptions="--fortran-kinds=+i+L"
runtime macros/matchit.vim
