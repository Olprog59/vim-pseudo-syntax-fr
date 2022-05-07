setlocal indentexpr=PseudoIndent()

function! PseudoIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous ==? "algo" || previous ==?"algorithme" || previous ==?"debut" || previous ==?"variable" || previous ==?"variables" || previous ==?"fonction" || previous ==?"procedure" || previous ==?"classe" || previous==?"enregistrement" || previous==?"si" || previous==?"sinon" || previous==?"pour" || previous==?"tantque" || previous==?"repeter"
    return indent(previousNum) + &tabstop
  elseif previous =~? "fin.*" || previous =~? "jusqu.*"
    return indent(previousNum) - &tabstop
  else
    return indent(previousNum)
  endif

endfunction