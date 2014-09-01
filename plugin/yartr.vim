let s:yartr_path=expand('<sfile>:p:h')

map <Leader>t :call YartrRunTestSingle()<CR>
map <Leader>T :call YartrRunTestAll()<CR>

function! YartrRunTestSingle()
  execute "silent !osascript ".shellescape(s:yartr_path)."/../lib/run_command 'cd ' `pwd` ' && ruby -Itest ' % ' --name=' <cword>"
endfunction

function! YartrRunTestAll()
  execute "silent !osascript ".shellescape(s:yartr_path)."/../lib/run_command 'cd ' `pwd` ' && ruby -Itest ' %"
endfunction
