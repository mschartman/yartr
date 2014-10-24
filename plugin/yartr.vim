let s:yartr_path=expand('<sfile>:p:h')

map <Leader>t :call YartrRunTestSingle()<CR>
map <Leader>T :call YartrRunTestAll()<CR>

function! YartrRunTestSingle()
  normal |y$
  let current_line=@"
  let first_line_of_test_match=matchstr(current_line, 'def test.*')
  if empty(first_line_of_test_match)
    execute("?def test") | :normal wyw
    let test_name=@"
  else
    :normal wwyw
    let test_name=@"
  endif
  let file_path=@%
  let cd_dir=matchstr(file_path, 'engines/[^/]*')
  let test_path= matchstr(file_path,'test/.*')
  execute "silent !osascript ".shellescape(s:yartr_path)."/../lib/run_command 'cd ' `pwd` ' && cd ./'"cd_dir" ' && ruby -Itest ' "test_path" ' --name=' "test_name""
endfunction

function! YartrRunTestAll()
  let file_path=@%
  let cd_dir=matchstr(file_path, 'engines/[^/]*')
  let test_path= matchstr(file_path,'test/.*')
  execute "silent !osascript ".shellescape(s:yartr_path)."/../lib/run_command 'cd ' `pwd` ' && cd ./'"cd_dir" ' && ruby -Itest ' "test_path""
endfunction
