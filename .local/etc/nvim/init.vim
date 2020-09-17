colo ron
set number
set guicursor=
set smartindent
set shiftwidth=4
set tabstop=4

set conceallevel=1

let space_match = matchadd('Conceal', '\v( @<= )|(  @=)', -1, -1, {'conceal': '·'})
let space_match = matchadd('Conceal', '\s\@<=\s+', 10, -1, {'conceal': '.'})

set list
set listchars=tab:»\ ,extends:›,precedes:‹

let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler_options = ' -std=c99'
let g:syntastic_c_config_file = '.syntastic_c_config'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17'
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
