let s:path=expand('<sfile>:p:h')

map <Leader>t :call RunCommandSingle()<CR>
map <Leader>T :call RunCommandAll()<CR>

function! RunCommandSingle()
  execute "silent !osascript ".shellescape(s:path)."/../lib/run_command 'cd ' `pwd` ' && ruby -Itest ' % ' --name=' <cword>"
endfunction

function! RunCommandAll()
  execute "silent !osascript ".shellescape(s:path)."/../lib/run_command 'cd ' `pwd` ' && ruby -Itest ' %"
endfunction
