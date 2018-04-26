let fortran_free_source=1
let fortran_do_enddo=1
let fortran_fold=1 " add fold feature for fortran file

setlocal smartindent
setlocal autoindent
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal smarttab
setlocal smartcase

let indexer_ctagsCommandLineOptions="--fortran-kinds=+i+L"
runtime macros/matchit.vim
