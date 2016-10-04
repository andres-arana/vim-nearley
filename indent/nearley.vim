setlocal indentexpr=NearleyIndent()

function! NearleyIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "{" && previous !~ "}" && (line !~ "}" || line !~ "%}")
    return indent(previousNum) + &tabstop
  elseif (line =~ "}" || line =~ "%}") && line !~ "{"
    return indent(previousNum) - &tabstop
  else
    return indent(previousNum)
  endif
endfunction
