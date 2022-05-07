if exists('b:current_syntax') | finish | endif

syn keyword pseudoStatement     Algo algo Algorithme algorithme Variable variable Variables variables Fonction Procedure Classe fonction procedure classe erreur nextgroup=pseudoFunction skipwhite
syn keyword pseudoPrint         ecrire
syn match   pseudoFunction      "[a-zA-z][a-zA-Z0-9_]*" display contained
syn keyword pseudoFunction      ajout somme longueur ajouter supprimer insertion
syn keyword pseudoConditional   SI si Sinon sinon FinIf finif Alors alors
syn keyword pseudoRepeat        Pour pour allant de TantQue tantque FinPour finpour FinTantQue fintantque retourne continue rompre repeter Repeter Jusqu'a jusqu'a
syn keyword pseudoOperator      ET et OU NON non
syn keyword pseudoBuiltIn       Chaine chaine Tableau tableau Entier entier Reel reel Enregistrement enregistrement Booleen booleen
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

hi def link pseudoNumber        Nombre
hi def link pseudoFloat         Reel
hi def link pseudoString        Chaine
hi def link pseudoStatement     Déclaration
hi def link pseudoPrint         Special 
hi def link pseudoFunction      Fonction
hi def link pseudoConditional   Condition
hi def link pseudoRepeat        Repeter
hi def link pseudoOperator      Operateur
hi def link pseudoBuiltIn       Type
hi def link pseudoBoolean       Booleen
hi def link pseudoComment       Commentaire

let b:current_syntax = 'pseudo'
