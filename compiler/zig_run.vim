" Vim compiler file
" Compiler: Zig Compiler (zig run)

if exists('current_compiler')
  finish
endif
runtime compiler/zig.vim
let current_compiler = 'zig_run'

let s:save_cpo = &cpo
set cpo&vim

if has('patch-7.4.191')
  CompilerSet makeprg=zig\ run\ \%:S\ \$*
else
  CompilerSet makeprg=zig\ run\ \"%\"\ \$*
endif

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: tabstop=8 shiftwidth=4 softtabstop=4 expandtab
