function! EbnfIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)
  " match lines starting with a rule and an operator or whitespace and an
  " operator
  let previousOp = matchend(previous, '^\w\+\s\?[:|]\|^\s\+[:|]')
  echom "previousNum: " . previousNum
  echom "previous: " . previous
  echom "previousOp: " . previousOp
  if v:lnum - previousNum == 1 && previousOp > 0
    return previousOp - 1
  endif
  return 0
endfunction

setlocal indentexpr=EbnfIndent()
