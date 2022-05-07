setlocal indentexpr=PseudoIndent()

function! PseudoIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~? "^[algo|algorithme|debut|variable|variables|fonction|procedure|classe|enregistrement|si|sinon|pour|tantque|repeter]"
    return indent(previousNum) + &tabstop
  elseif previous =~? "^fin.*"
    return indent(previousNum) - &tabstop
  else
    return indent(previousNum)
  endif

endfunction