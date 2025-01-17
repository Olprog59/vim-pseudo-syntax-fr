if exists('b:current_syntax') | finish | endif

syn keyword pseudoKeyword       Algo algo Algorithme algorithme Debut debut Fin fin Variable variable Variables variables adresse valeur
syn keyword pseudoStatement     Fonction FinFonction finfonction Procedure FinProcedure finprocedure Classe fonction procedure classe erreur Enregistrement enregistrement FinEnregistrement finenregistrement nextgroup=pseudoFunction skipwhite
syn keyword pseudoPrint         ecrire
syn keyword pseudoRead          lire
syn match   pseudoFunction      "[a-zA-z][a-zA-Z0-9_]*" display contained
syn keyword pseudoFunction      longueur ajouter supprimer insertion
syn keyword pseudoConditional   Si si Sinon sinon FinSi finsi Alors alors
syn keyword pseudoRepeat        Pour pour allant de par pas TantQue tantque FinPour finpour FinTantQue fintantque Repeter repeter Jusqu'a jusqu'a Jusqua jusqua FinRepeter finrepeter Retourne retourne Continue continue Rompre rompre à
syn keyword pseudoOperator      ET et OU ou NON non IN in
syn match   pseudoKeyword       "<-" display
syn match   pseudoKeyword       "&" display
syn keyword pseudoBuiltIn       Chaine chaine Caractere caractere Tableau tableau Entier entier Reel reel Booleen booleen Chaines chaines Caracteres caracteres Tableau tableau Entiers entiers Reels reels Booleens booleens
syn keyword pseudoBoolean       Vrai Faux vrai faux

syn region  pseudoString        start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend
syn region  pseudoString        start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend

syn match   pseudoComment       '//.*$' display
syn region  pseudoComment       start="/\*" end="\*/"

syn match   pseudoNumber        '\<\d\>' display
syn match   pseudoNumber        '\<[1-9][_0-9]*\d\>' display
syn match   pseudoNumber        '\<\d[jJ]\>' display
syn match   pseudoNumber        '\<[1-9][_0-9]*\d[jJ]\>' display

syn match   pseudoFloat         '\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=\>' display
syn match   pseudoFloat         '\<\d\%([_0-9]*\d\)\=[eE][+-]\=\d\%([_0-9]*\d\)\=[jJ]\=\>' display
syn match   pseudoFloat         '\<\d\%([_0-9]*\d\)\=\.\d\=\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=' display

hi def link pseudoNumber        Number
hi def link pseudoFloat         Float
hi def link pseudoString        String
hi def link pseudoStatement     Statement
hi def link pseudoPrint         Special
hi def link pseudoRead          Special
hi def link pseudoFunction      Function
hi def link pseudoConditional   Conditional
hi def link pseudoRepeat        Repeat
hi def link pseudoOperator      Operator
hi def link pseudoBuiltIn       Type
hi def link pseudoBoolean       Boolean
hi def link pseudoComment       Comment
hi def link pseudoKeyword       Keyword

let b:current_syntax = 'pseudo'
