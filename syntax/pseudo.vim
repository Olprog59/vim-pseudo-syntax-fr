if exists('b:current_syntax') | finish | endif

syn keyword pseudoStatement     Algo algo Algorithme algorithme Debut debut Fin fin Variable variable Variables variables Fonction FinFonction finfonction Procedure FinProcedure finprocedure Classe fonction procedure classe erreur Enregistrement enregistrement FinEnregistrement finenregistrement nextgroup=pseudoFunction skipwhite
syn keyword pseudoPrint         ecrire
syn keyword pseudoRead          lire
syn match   pseudoFunction      "[a-zA-z][a-zA-Z0-9_]*" display contained
syn keyword pseudoFunction      ajout somme longueur ajouter supprimer insertion
syn keyword pseudoConditional   Si si Sinon sinon FinSi finsi Alors alors
syn keyword pseudoRepeat        Pour pour allant de TantQue tantque FinPour finpour FinTantQue fintantque retourne continue rompre repeter Repeter Jusqu'a jusqu'a FinRepeter finrepeter
syn keyword pseudoOperator      ET et OU ou NON non
syn keyword pseudoKeyword       /<-/
syn keyword pseudoBuiltIn       Chaine chaine Caractere caractere Tableau tableau Entier entier Reel reel Booleen booleen
syn keyword pseudoBoolean       Vrai Faux vrai faux

syn region  pseudoString        start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend
syn region  pseudoString        start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend

syn match   pseudoComment       '//.*$' display

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
