" Vim compiler file
" Compiler: Zig Compiler (zig build-exe)

if exists('current_compiler')
  finish
endif
runtime compiler/zig.vim
let current_compiler = 'zig_build_exe'

let s:save_cpo = &cpo
set cpo&vim

CompilerSet makeprg=zig\ build-exe\ \%:S\ \$*

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: tabstop=8 shiftwidth=4 softtabstop=4 expandtab
